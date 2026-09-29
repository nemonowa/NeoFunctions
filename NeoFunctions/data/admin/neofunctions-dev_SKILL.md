---
name: neofunctions-dev
description: Use this skill whenever working on the "NeoFunctions" Minecraft datapack (MC 1.20.4, pack_format 26; namespaces `neofunction` / `neoadvancement` / `neodimension` / `admin`; entry points `neofunction:tick` and `neofunction:load`; Japanese 5-line header comments `# 命名/説明/実行条件/>/=` on every .mcfunction). Trigger on ANY request to add a feature, fix a bug, add an item / entity / skill / boss / quest, edit a .mcfunction, .json advancement, loot table, predicate or item modifier in this repository, or to review or explain its code — even if the user just says "neo のデータパック" or "NeoFunctions.zip". Covers the tick/event/clock architecture, the ID system, the strict rules for what may NOT be changed without permission, load-awareness rules, and how to verify 1.20.4 command syntax from correct sources.
---

# NeoFunctions 開発スキル

Minecraft 1.20.4 用データパック「NeoFunctions」（作者 argonaute_nemo / SoraFlete、2022年〜継続開発）を触るエージェントのための手順書。
**回答・コメント・ヘッダーはすべて日本語**で書く（既存コードが日本語で統一されているため）。

このプロジェクトは 12,000 ファイル超・mcfunction 4,000 超の「ワールドを丸ごと書き換える」データパックで、4年分の設計判断が構造とコメントに埋め込まれている。**最優先事項は「既存処理の尊重」であり、「自分ならこう書く」は二の次**。以下の順で読むこと。

- 第1章 触る前の心得（禁止事項）
- 第2章 着手手順
- 第3章 アーキテクチャ要点（詳細は `references/architecture.md`）
- 第4章 命名・配置・ヘッダー規約（詳細は `references/conventions.md`）
- 第5章 1.20.4 の構文を正しく調べる（詳細は `references/mc-1.20.4-syntax.md`）
- 第6章 作業完了前チェックリスト

---

## 1. 触る前の心得 — 破ってはいけないこと

### 1-1. 既存処理を最大限尊重する
- 動いているコードには理由がある。読んで「非効率」「冗長」と感じても、**依頼された範囲外の書き換え・整理・リファクタはしない**。
- 変更は「追加」で行うことを基本にする。既存行を書き換える場合は、その行を変えなければ目的を達成できない理由を説明できること。
- 既存の関数名・タグ名・スコア名・ストレージキー・ID 番号は**改名しない**。grep で追える構造がこのプロジェクトの生命線であり、改名は数百ファイルに波及する。

### 1-2. 基幹部分は許可なく改変しない
次のファイル・階層は**ユーザーの明示的な許可がない限り一行も変更しない**（読むのは自由）。変更が必要だと判断したら、変更案と理由を提示して止まる。

| 区分 | パス |
|---|---|
| 起点 | `neofunction:tick` `load` `system/tick` `player/tick` `entity/tick` |
| 審査 | `entity/.spawn/.neo` `.spawn/tag` `.spawn/mob` `.spawn/obj` `.spawn/team` `.spawn/mob/uuidcheck` `uuid_macro` |
| 常時スキルの入口 | `entity/skill/.neo` `entity/skill/.neo-1` `entity/skill/del` |
| 周期 | `system/clock/*`（`all_clock_start` `all_clock_stop` `N_second` すべて） |
| 初期化 | `system/setting.mcfunction` `system/setting/*`（特に `2_scoreboard` `3_scoreboard_set` `4_team` `5_storage`） |
| ログイン | `asset/event/log-in.mcfunction` `asset/event/log-in/*`（`hello_world` `.neo` `0`〜`5`） |
| イベント共通 | `system/adv/player_hurt_entity/.all` `.get_entity` および各トリガー直下の `.all` |
| 入力 | `system/trigger/.all_trigger_make` `.all_trigger_enable` `trigger/on` `skill` `code.mcfunction` |
| 検知の親 | `advancements/.clock/*` |
| 定義 | `pack.mcmeta` `minecraft/tags/functions/*` |

`.neo-1` の除外リスト追記（3-3 参照）のように「規約上そこへ追記するしかない」箇所は、**追記する1行だけを示して確認を取ってから**書く。

### 1-3. コメントアウトを勝手に消さない
- `#` で始まる行、`# execute …` のような無効化済みコマンド、`#tellraw` の旧表示、`# クリーパー:爆発を早める` のような検討痕はすべて**経緯の記録**。消さない、並べ替えない、復活させない。
- 「未使用に見えるファイル」「（説明未記載）のままのヘッダー」も消さない・埋めない。ヘッダーの `説明` を補うのは、ユーザーに依頼された時だけ。
- 自分の変更には理由コメントを添える：`# 【追加：YYYY-MM-DD 目的】…` の形で、既存の日本語コメントの流儀に合わせる。

### 1-4. 負荷への配慮（ノートPCで遊ぶ人のために）
コメント「ノートPCで遊ぶ人のため軽量化に注力せよ！」「毎tick @e 重い！減らせ！！！」が設計方針。
- **毎tick に新しい `@e` セレクタを書かない**。書くなら既存のタグ分岐（3-3）の下に子関数として置く。
- `@e[nbt=…]` と `@e[predicate=…]` は最重量級。`nbt` はスポーン時（`.spawn/obj/item/*`）か進捗検知に置き換える。エフェクト検知は作者が「超オモイ！極力実装しません」と却下済み。
- 周期で足りるものは毎tickに置かない：`clock/1_second` → `3s` → `5s` → `10s` の順に検討し、**より遅い周期で済むならそちら**。
- 距離制限（`@a[distance=..64]`）とガード節（`return 0`）を先頭に置き、処理本体に到達する個体数を減らす。
- 進捗検知が使えるものは tick に書かない（1-5）。

### 1-5. 検知は既存処理に相乗りし、イベント駆動で書く
- 「殴った・殴られた・倒した・拾った・食べた・釣った・見た・場所・スコア閾値」は**すべて進捗トリガーで検知済み**。新機能はまず「どのトリガーの、どの `.all` に相乗りできるか」を探す（`references/architecture.md` §4）。
- 相乗り先の `.all` 自体は基幹なので、**`.all` から呼ばれる新規子関数を作り、`.all` への追記1行は許可を得る**。既存の個別関数（`system/adv/player_hurt_entity/130` 等）に関係ない処理を混ぜない。
- 新しい検知進捗を作る場合は必ず `"parent": "neofunction:.clock/<周期>"` を付け、処理側で revoke しない（1t は毎tick、5s なら5秒に1回まで発火）。
- スコア閾値・trigger・統計（play_time, leave_game…）の検知は `advancements/tick/entity_scores/*` の流儀（処理側で `advancement revoke @s only`）に従う。

### 1-6. スコアボードオブジェクトを許可なく増やさない
- `scoreboard objectives add` は **`system/setting/2_scoreboard` にしか書かない**。そこは基幹なので、新オブジェクトは原則禁止。
- 一時変数・フラグ・計算はすべて **`temp` objective の偽プレイヤー**で賄う。既存の接頭辞に従う：
  - 計算用一時値：`#Calc…`（`#` 始まりはサイドバー非表示）。新規は `#<機能名>_<用途>` にして衝突を避ける（例 `#frogsoundrandom`, `#count215`）。
  - ワールド設定フラグ：接頭辞なし小文字、**-1 が ON**（`night temp`, `nosp temp`）。
  - 定数：`$N const`（既存を使う。新しい定数を足す時も `const` へ、`temp` に入れない）。
- 個体ごとの値がどうしても必要なら、まず既存の `temp`（`@s temp` は 131 箇所で使われている汎用一時スコア）と `flag`（"いろいろな判定用"）を検討。それでも足りない場合のみ、理由を添えて新オブジェクトを**提案**する（自分では追加しない）。
- ストレージは増やしてよい範囲が広い（`neofunction:<機能名>` の新 namespace は可）。ただし既存キー（`skill`, `main_story`, `asset`, `crafter`…）の構造は変えない。

---

## 2. 着手手順

1. **現物を確認する**：`find data -name '*.mcfunction' | wc -l`、対象フォルダの `ls -a`（ドットファイルが入口）。README のツリーは古いことがある。
2. **触る予定の関数のヘッダー5行を読む**。`>`（呼び出し元）と `=`（自パス）が唯一信頼できる配線情報。`grep -rl "neofunction:<path>"` で実際の呼び出し元も突き合わせる。
3. **同種の既存実装を1つ探して真似る**：アイテム効果なら `system/adv/tick/cmd/<id>`、被弾効果なら `system/adv/entity_hurt_player/<id>`、常時スキルなら `entity/skill/<tag>`、ボスなら `entity/skill/boss/<name>/`。コピー元をコメントに書く。
4. **ID を採番する**前に空き番号を確認：`ls data/neofunction/loot_tables/item | sort -n | tail`、`ls data/neofunction/functions/asset/summon | sort -n | tail`。既存番号は再利用しない（図鑑進捗が達成済みのワールドで衝突する）。
5. 変更が基幹（1-2）に触れるか判定し、触れるなら**ここで止めて確認**。
6. 実装 → 第6章のチェック → 変更ファイル一覧と「相乗りした既存処理」「追記を依頼する基幹の行」を報告。

---

## 3. アーキテクチャ要点

### 3-1. 三本の起点（負荷順・順序固定）
```
neofunction:tick
 ├ system/tick   … 0-0-0-0-1（システム用固定UUIDエンティティ）起点。負荷小
 ├ player/tick   … @a 起点。.clock/1t の revoke、職業(SP≧1)、死亡検知、エリアタイトル
 └ entity/tick   … @e 起点。負荷極大
     ├ @e[tag=!check]           → entity/.spawn/.neo   （生成後1tickだけの審査）
     ├ @e[tag=!vanilla,tag=check] → entity/skill/.neo   （タグ駆動の常時スキル）
     ├ portalcooldown 判定
     └ @e[tag=del]              → entity/skill/del     （1tick遅延の安全な削除）
```
`asset/*` は「呼ばれるだけのデータベース」で、起点を持たない（summon/N, skill/N, item(loot)/N, tellraw, particle, playsound, bossbar…）。

### 3-2. スポーン審査（`.spawn/.neo`）で付く基本タグ
- タグ無し → `vanilla`（カスタム処理対象外）。タグあり → `.spawn/tag` が `boss/king/god/elite/inv/ghost/lv0..9/except` を解釈。
- `team=!NonExsitentTeam` に一致＝生物 → `mob`、それ以外 → `obj`（item, arrow, AEC, display…）。
- `mob` は `ally / safe / enemy` に分類され、チーム `green / gray / red` に入る。プレイヤーは `white`。
- 最後に `check`。**以後この関数は二度と通らない**ので、スポーン時1回で済む初期化はここに寄せる（ただし基幹）。

### 3-3. 常時スキルの二段ふるい（`skill/.neo` → `.neo-1`）
- `.neo`：`fly1 / downer / upper / fly0 / boss` だけ距離無制限で処理。
- `.neo-1`：先頭の長い `execute if entity @s[tag=!air,tag=!leader,…] run return run … tag @s add vanilla` が「認識タグ一覧」。**ここに無いタグを持つエンティティは翌tickに vanilla 扱いされ、二度と処理されない**。新しい常時タグは (a) この行への追記1行（要許可）＋ (b) `entity/skill/<tag>.mcfunction` 子関数、の2点セット。
- その次の行で「64m 以内にプレイヤーがいなければ return 0」。この後ろに1行の `execute if entity @s[tag=<tag>] at @s run function …` を足す。
- 削除は `kill` ではなく `tag @s add del`（周期版 `del1s/del10s/del300s/del1200s`）。

### 3-4. 進捗＝イベント
`advancements/<trigger>/<id>.json` ⇔ `functions/system/adv/<trigger>/<id>.mcfunction` が1対1。`parent` は `.clock/<周期>`、周期関数が `advancement revoke @a from .clock/<周期>` で子孫ごと再装填する。
`player_hurt_entity` は UUID を 31 ビットに分解した criteria で「殴った相手」を `tag hit` として特定する（`.get_entity` マクロ）。**`hit` / `attacker` / `looked` / `interacted` / `hooked` は一時タグで、同じ関数内で必ず remove する。**

### 3-5. ID 体系（番号ひとつで全部つながる）
| 種類 | 実体 | 図鑑（表示） | 入口マクロ |
|---|---|---|---|
| アイテム N | `loot_tables/item/N.json`（`CustomModelData:N` を set_nbt） | `neoadvancement:neoitem/N` | `asset/item {item:N}` |
| エンティティ N | `asset/summon/N.mcfunction`（`DeathLootTable:"neofunction:asset/summon/N"` が種族ID）＋ `loot_tables/asset/summon/N.json` | `neoadvancement:neoentity/N` | `asset/summon {summon:N}` / item NBT `{summon:N}` |
| スキル N | `asset/skill/N.mcfunction`、状態は `storage neofunction:skill` | `neoadvancement:neoskill/N`（200/210/220/230/240/250 が職業の根） | `asset/skill {skill:N}` / `/trigger on set N` |

新規追加は**必ずこのセットを揃える**（図鑑を省くと EXP 源とプレイヤーの記録が欠ける）。

### 3-6. データの置き場所
- スコア（93個、増やさない）：個体ごとに頻繁に変わる数値のみ。
- `temp` 偽プレイヤー：一時計算・設定フラグ（1-6）。`world`：サイドバー表示値。`const`：`$N`。
- ストレージ `neofunction:<name>`：構造化データ・マクロ引数・複数プレイヤー横断の状態。
- タグ：種別と一時マーカー。進捗（`neoadvancement`）：「一度達成したら永続する真偽値」。

詳細な流れ図と各サブシステムの入口一覧 → `references/architecture.md`。

---

## 4. 命名・配置・ヘッダー規約

### 4-1. ヘッダー5行（全 4,167 ファイルが準拠。例外なし）
```
# 命名：<名称。無ければファイル名>
# 説明：<1行。複数行なら「# 説明：」を繰り返す。結合しない>
# 実行条件：<あれば。説明の下・呼び出し元の上>
# >/function neofunction:<呼び出し元>   ← 複数なら1行ずつ。進捗からなら >/advancement neofunction:…
# =/function neofunction:<自身のパス>   ← 必ず最後の行。ディレクトリから機械的に決まる
<空行>
# 内容
<コマンド>
```
- `=` は実際の格納場所と一致させる（現状の不一致 0 件を維持）。
- 既存ファイルを新しく呼ぶようにしたら、**呼ばれる側の `>` に自分を追記**する。
- 本文は `# 内容` から。表記ゆれ（`## 内容`, `#内容`）は既存分を直さない。

### 4-2. ファイル名
- 小文字のみ。大文字を含む .mcfunction は 0 件。
- 基本は**番号**（ID）。必要なら小文字省略語（`cmd` `adv` `aec` `lvl` `sp` `csgui`）。CamelCase はタグ名側（`LTPivot`, `FrogBoss`）にだけ使う。
- ドット始まり（`.neo` `.macro` `.all` `.get_entity`）は「そのフォルダの入口／内部専用」。新しいフォルダに入口を作るなら `.neo`。
- 実行順を示す時は数字接頭辞（`0_first_get_exp` … `3_lvl_up`、`setting/1_…5_…`）。

### 4-3. 実行者を考えて正しい階層に置く
「誰が `@s` か」で置き場所が決まる。迷ったら同じ実行者の既存関数の隣に置く。

| 実行者（@s） | 起点 | 置き場所 |
|---|---|---|
| プレイヤー、進捗の報酬として | 進捗 | `system/adv/<trigger>/…` |
| プレイヤー、毎tick／周期 | `player/tick`, `clock/*` | `player/<機能>/…` |
| プレイヤー、`/trigger` から | `tick/entity_scores/trigger/*` | `system/trigger/<name>/…` |
| エンティティ、スポーン時1回 | `entity/.spawn/*` | `entity/.spawn/<mob|obj>/…`（基幹・要許可） |
| エンティティ、常時（タグ） | `entity/skill/.neo-1` | `entity/skill/<tag>` または `entity/skill/boss/<name>/` |
| エンティティ、周期 | `clock/N_second` → `entity/skill/clock/Ns` | `entity/skill/clock/Ns` に1行＋子関数 |
| サーバー／実行者不定 | `load`, `schedule`, `setting` | `system/<機能>/…` |
| 呼ばれるだけ（データ） | どこからでも | `asset/<種別>/…`（summon, skill, tellraw, particle, playsound, item…） |
| 制作者専用ツール | 手動 | `admin:`（配布ロジックに依存させない） |

`schedule function` は実行者を失う（サーバー実行になる）。プレイヤー個別に続きを行うなら、スコアやタグに状態を残してから schedule する（`asset/event/log-in` が例）。

規約の全リスト（明示5＋暗黙14）と根拠 → `references/conventions.md`。

---

## 5. 1.20.4 の構文を正しく調べる

Minecraft のコマンド・NBT・JSON 形式は**バージョンごとに壊滅的に変わる**。学習知識だけで書くと、1.20.2 以前や 1.20.5 以降（アイテムコンポーネント化）の構文が混入して静かに壊れる。

- **このプロジェクトは 1.20.4（pack_format 26）固定**。`CustomModelData` は NBT の `tag:{CustomModelData:N}`、`display:{Name:'…',Lore:[…]}`、`data/<ns>/functions/`（複数形）、`Attributes:[{Name:generic.x,Base:…}]`。**`components` / `custom_model_data` / `minecraft:custom_name` / `function/`（単数形）は使わない**。
- 1.20.2 以降の機能は使ってよい：マクロ `$(var)` と `function … with storage`、`return run` / `return 0`、`execute if function`、`scoreboard players display name/numberformat`。
- 書く前に、**バージョンを明示して一次情報源で確認**する。信頼順位：
  1. Minecraft Wiki（英語）の該当ページの「History」節と、1.20.4 時点の記述（`web_search "site:minecraft.wiki <command> 1.20.4"` 相当のクエリで検索してから fetch）。
  2. misode.github.io のジェネレータ（バージョンを 1.20.4 に切り替えて advancement / loot table / predicate / item modifier の JSON 構造を確認）。
  3. このリポジトリ内の**同種の既存ファイル**（実際に 1.20.4 で動いている実例。最も安全な参照）。
  4. Mojang 公式の changelog（1.20.2〜1.20.4 の Technical Changes）。
- 上記で確認できない構文は書かない。曖昧なら「1.20.4 で動くか未確認」と明記して提出する。
- 検証手段：`java -jar server.jar` で `/reload` ログを見るのが確実。無理なら最低限 `python -m json.tool` で全 JSON を検査し、mcfunction は `grep -n '\$' ` でマクロ行の `$(...)` 対応を目視する。

バージョン差分の早見表と、間違えやすい構文の対照 → `references/mc-1.20.4-syntax.md`。

---

## 6. 作業完了前チェックリスト

- [ ] 基幹（1-2）を許可なく変更していない。必要な追記は「提案」として分離して報告した。
- [ ] コメントアウト行・旧処理・（説明未記載）を削除／改変していない。
- [ ] 新規／変更ファイルすべてにヘッダー5行があり、`=` が格納場所と一致し、呼び出し先の `>` を更新した。
- [ ] 毎tickに `@e` / `nbt=` / `predicate=` を新設していない。周期で済むものは `clock/` に置いた。
- [ ] 検知は既存の進捗トリガーに相乗りし、新規進捗には `.clock/*` の parent がある。
- [ ] `scoreboard objectives add` を書いていない。一時値は `temp`（`#` 接頭辞）で賄った。
- [ ] 一時タグ（hit/attacker/looked/…）は同一関数内で remove。削除は `tag del`。
- [ ] ID を新規採番し、item/entity/skill のセット（実体＋図鑑＋入口）を揃えた。
- [ ] 1.20.4 の構文であることを情報源つきで確認した（`components` 系が混入していない）。
- [ ] JSON は全件パースが通る。マクロ行は `$` 始まり、`$(key)` の key が呼び出し側と一致。
- [ ] 報告に「変更ファイル一覧」「相乗り先」「要許可の追記行」「未検証事項」を含めた。
