# NeoFunctions TODO — 静的解析で見つかった不具合・改善候補（2026-09-02）

対象：NeoFunctions.zip（ver1.0 for MC1.20.4 / pack_format 26）。全 4,167 mcfunction・8,040 json を走査し、
「呼び出し先が存在しない」「JSON として不正」「作者コメントの未完了項目」「負荷の高いセレクタ」を機械的に抽出したうえで、個別に読んで判定した。
ゲーム内での実機再現はしていないため、各項目の **確度** を付す（◎=コード上確定 / ○=ほぼ確実 / △=意図的な可能性あり・要確認）。

優先度の目安：**P1**=プレイヤー体験に直結し修正が小さい、**P2**=品質・保守性、**P3**=大きな投資が要る。
skill `neofunctions-dev` の規約に従い、**基幹ファイルの変更を伴う項目には〔要許可〕** を付けた。

---

## A. 明確なバグ（呼び出し先が存在せず、機能が黙って動いていない）

| # | 優先 | 確度 | 場所 | 症状 | 原因 | 対処案（最小） |
|---|---|---|---|---|---|---|
| A6 | P2 | ◎ | `system/adv/shot_crossbow/673/modify_offhand` L9-14 | 銃 673 のオフハンド弾薬更新が無効 | `item_modifiers/reload/gun/1..6` が無い（実在は `item_modifiers/gun/{1,2}.json` と `gun/673/`） | 参照先を実在パスへ修正 or modifier を追加 |
| A8 | P2 | ◎ | `asset/skill/237` | テイマー系スキル 237 が途中で失敗 | `asset/skill/tamer/ensure_darkred_team` 不在 | 関数作成（`team join dark_red @s` 相当と推定。要確認） |
| A11 | P2 | ◎ | `system/adv/changed_dimension/.neo` / `enter_block/nexus_gateway` / `inventory_changed/structure_block{,/6,/100}` / `system/storage/asset` / `system/pos/.save` / `entity/attribute/difficulty` / `entity/.spawn/mob/armor_stand/.neo` / `entity/skill/trident8` / `system/trigger/code`(444) / `player/cheat/.cheater` | それぞれ 1 箇所ずつ存在しない関数を呼ぶ（合計 40 種 100 件。上記 A1〜A10 を除く残り） |  | 付録 §1 のコマンドで一覧を再生成し、1 件ずつ「実装/修正/コメント化」を判断 |
| A14 | P3 | ◎ | `loot_tables/*` 参照 | `neofunction:item/`（空パス 7 件）`item/0`（2）`item/glow_item_frame/159` `asset/summon/7777`（各1） | ID 未記入・テスト残骸 | 空パス 7 件はスプレッドシート出力の欠損。該当関数を特定して ID を埋める |

---

## B. ロジックの不整合・死んだ経路（動作はしているが、書かれている設計と違う）

| # | 優先 | 確度 | 内容 | 影響 | 対処案 |
|---|---|---|---|---|---|
| B3 | P2 | ○ | `system/trigger/code.mcfunction` に分岐が無い `code/N` が **42 件**（5,6,7,14,15,16,34,36,37,40,45〜51,55〜60,64〜68,99〜104 …）。逆に分岐はあるが関数が無い `code=444` | 過去のメニュー項目の残骸か、tellraw から直接 `function` で呼ばれる想定か不明 | 一覧を作者に提示し、生きているものだけ分岐を復活 |
| B6 | P3 | △ | `player/tick` は `@a[scores={SP=1..}]` にしか `job/.neo` を回さない | SP が 0 以下の間、職業の tick 処理が完全停止する。SP 枯渇ペナルティとして意図的か？ | 意図なら `job/.neo` ヘッダーに明記。意図でなければ条件を外す〔要許可〕 |
| B7 | P3 | ◎ | バージョン表記が 4 箇所で不一致：README「ver1.0」、サイドバー「v0.2forMC1.20.4」、storage `version`「ver 0.0.0」、pack.mcmeta | 表示上の混乱のみ | 1 箇所（storage）を正とし他を参照 |
| B9 | P3 | ◎ | 未参照（孤立）関数 **469 件**（admin 除く・マクロ経由を考慮済み）。多いフォルダ：`system/trigger/code`(42) `asset/particle`(25) `player/inventory/csgui/slot`(25) `entity/skill`(19) `asset/sign`(16) `system/scoreboard/lvl/admin`(15) `entity/skill/motion`(14) 職業 `shooter/doctor/assasin`(各10〜12) | 保守時に「生きているか」判断できない | 削除はしない。ヘッダー `>` に `（未参照 2026-09）` を追記する運用を提案。一覧は付録 §1 で再生成可能 |

---

## C. データ整合性（今は動いているが壊れやすい）

| # | 優先 | 確度 | 内容 | リスク | 対処案 |
|---|---|---|---|---|---|
| C1 | P2 | ◎ | 進捗 JSON **347 件**（`neoitem` 328、`neoentity` 15、`anchor` 4）が文字列内に生の改行を含み、厳密な JSON として不正。`minecraft/tags/functions/tick.json` には `//` コメント | 現在は Gson の寛容モードで読めているが、misode 等の外部ツールで開けない・1.21 系での読込保証が無い・CI で検証できない | 改行を `\n` にエスケープする一括変換（機械的。付録 §2）。tick.json のコメントは削除〔要許可〕。**変換後に実機 `/reload` で確認** |
| C2 | P2 | ◎ | 299 の `asset/summon/*` に、`DeathLootTable:"neofunction:entity/19"` / `entity/404` を持つ「/reload はしましたか？」表示用サブエンティティが埋め込まれている | ルートテーブルは存在しない（ドロップ無しなので実害なし）。ただし旧 ID 体系（`entity/N`）の痕跡で、grep ノイズ源 | 共通テンプレートなので、`asset/summon/.error` のような1関数に切り出して `function` 呼び出しに置換すると 299 ファイルが軽くなる（P3、要作者判断） |
| C3 | P3 | ◎ | 配布 zip に開発資材が同梱：`.zip` 36、`.lnk` 7、`.pptx` 2、`.vsix` 2、`.py` 3、`.txt` 16、`.url` 2 | 70MB 中の相当量が不要。`.zip` 内に旧進捗が残っており、解凍事故で二重定義になる恐れ | `pack.mcmeta` の filter を拡張するより、リリース用ビルドスクリプト（除外リスト付き zip 化）を `admin/` に置く |
| C5 | P3 | △ | 綴り固定：`assasin`（assassin）、`NonExsitentTeam`、`venediction`（benediction）、`Resarved` | 改名は数百ファイルに波及するため**しない**。用語集で吸収 | skill の用語集に既記載 |

---

## D. 負荷改善（費用対効果が高いもの。作者方針「ノートPC向け軽量化」に沿う）

| # | 優先 | 確度 | 場所 | 現状 | 改善案 | 期待効果 |
|---|---|---|---|---|---|---|
| D1 | P1 | ◎ | `system/adv/player_hurt_entity/.get_entity`〔要許可〕 | 攻撃のたびに `tag @e[tag=mob,tag=UUIDchecked] add hit` → ワールド中の全 mob にタグ付与→31 回の絞り込み | 呼び出し側で `execute at @s` して `@e[…,distance=..16]` に限定（被弾相手は必ず近距離）。マクロ引数で距離を渡してもよい | 密集地帯での攻撃時スパイクを大幅削減。変更は 2〜3 行 |
| D3 | P1 | ◎ | `entity/.spawn/mob/enemy`〔要許可〕 | 敵 1 体スポーンごとに `execute as @e[type=zombie_villager] …`、`@e[type=zombie,nbt=!{Health:20f}]`、`@e[type=drowned,…]` を**全個体**へ実行 | `@e` → `@s` に置換（自分自身への初期化が目的） | スポーン数×既存個体数 の O(N²) を O(N) に |
| D4 | P2 | ◎ | `player/attack/all`（未参照） | `execute as @e[nbt={HurtTime:9s}]` | 未参照なので実害なし。復活させる場合は進捗 `player_hurt_entity` の `hit` タグに置換 | — |
| D5 | P2 | ○ | `entity/skill/.neo-1`〔要許可〕 | 認識タグ 19 個を `tag=!…` で連結した 1 行のガード。タグ追加のたびに全走査 | 新規タグは `tag` ではなく共通タグ `skill`（＝「.neo-1 で処理する」印）を併せて付け、ガードを `tag=!skill` 1 条件にする。既存タグには移行期間中両方付ける | 毎tick・全カスタムエンティティの条件評価を 19→1 に。追記漏れバグ（skill 3-3）も構造的に解消 |
| D6 | P2 | ◎ | `entity/tick` の `@e[tag=!check]` | 全エンティティを毎tick「未検査か」で走査（設計上必要） | 変更不要。ただし `.spawn/*` の中で `@e` を使わない（D3）ことが前提 | — |
| D7 | P2 | ○ | `entity/skill/clock/1s` の `execute as @a at @s as @e[tag=chair,distance=..5]` 等、`@a` × `@e` の二重ループが複数 | プレイヤー数×エンティティ数 | `as @e[tag=chair] at @s if entity @a[distance=..5]` に反転（エンティティ起点） | 人数が増えるサーバーで効く |
| D8 | P3 | △ | `system/adv/tick/cmd/*`（parent `.clock/1t`、39 件） | 手持ち CMD 検知は進捗側で済んでおり適切。ただし `tick` トリガー進捗が 271 件あり、毎tick 全プレイヤーに対して評価される | 常時効果が不要なもの（表示だけ等）は `.clock/1s` 親に変更 | 進捗評価回数の削減。個別判断が必要 |

---

## E. 作者がコード内で明記している TODO（引用）

| # | 場所 | 引用 | 提案 |
|---|---|---|---|
| E1 | `system/clock/1_second` | 「1s毎にダメージを受けたかどうかチェック…この検知は正確ではない（例えば他の要因でダメージ受けた時）…いつか修正希望」 | `no_dmg_timer` の加算を、`entity_hurt_player/.all` で `scoreboard players set @s no_dmg_timer 0` にリセットする方式に変更（被弾＝進捗で確実に検知できる）。1s 側は加算のみ残す。**小変更・高効果** |
| E2 | `system/clock/1_second` | 「色彩神殿のエンパと跳躍対策、今後汎用処理に移動予定←すでに完了済だけど、プレイヤー体験の面から改善必須」 | `clock/1_second/1` の parkour 処理を `system/adv/tick/dungeon/colorofsanctuary` 側へ統合。体験面は作者ヒアリング |
| E3 | `system/setting/2_scoreboard` | 「プロローグタイマー いつか下の汎用タイマーに統合したい（切実）その時はgeneralタイマーの名前も治したいな（願望）」 | `prog_timer` / `ceres_timer` / `generaltimer` / `venedictiontimer` の 4 系統を、`generaltimer` ＋ 用途タグ（`timer_prog` 等）へ統合。**スコア objective を 6 個減らせる**が、参照 200 箇所超の改修（P3） |
| E4 | `system/clock/30_second` | 「全列挙の武器追加効果CD終了通知（いつかファンクションにまとめたい）」 | `player_hurt_entity/{1284,1286,1288}` の列挙を、進捗達成状態をマクロで回す `asset/tellraw/cdweapon` 呼び出しに集約 |
| E5 | `system/trigger/skill` | 「注：旧式の処理です！」 | `skill` トリガー利用箇所を `on` へ移行し、`skill` を無効化（`.all_trigger_enable` から除外）。移行完了後に tellraw 警告を削除 |
| E6 | `entity/skill/del` | 「召喚獣の場合専用メッセ（これはあんまりよくない）」 | `familiar` の削除メッセージを `del` 本体から `familiardel` 側の判定に閉じる（del は純粋な削除処理に戻す） |
| E7 | `entity/skill/clock/1s` | 「乗るのは3s処理に」（椅子） | 3s 側に既にあるか確認し、1s 側のパーティクルは D7 の反転を適用 |
| E8 | `player/absorption` 周辺 | 「一度ヒールしたら敵から攻撃喰らうまでは回復処理を行わない」 | E1 と同時に解決 |
| E9 | `system/setting/2_scoreboard` | `ATK/INT/RES/LUK/CRT/SPD` がコメントアウト（予約） | 未使用のまま。ステータス拡張を行うなら `temp` ではなく最初からここに追加する設計（skill の「temp を使う」ルールの例外として作者承認が必要） |
| E10 | `advancements/.clock/how.txt` | 「周期指定単体クロック」（`time_check` の `period`）の説明メモ | 1t 親の進捗（271 件）のうち周期で足りるものを `period` 方式へ（D8） |

---

## F. 構造的な改善（中〜大コスト。効果は大きいが設計判断が要る）

| # | 内容 | コスト | 効果 | 備考 |
|---|---|---|---|---|
| F1 | **図鑑報酬の一本化**：`neoitem/neoentity` の `rewards.function` を `player/level/give/item/.macro` のような 1 関数にし、EXP 量を進捗の `criteria` 名や storage から引く | 中（スプレッドシート出力の変更） | A2 のような欠損が構造的に起きなくなる | 2,600 件の JSON 再生成 |
| F2 | **`.error` サブエンティティの共通化**（C2） | 中 | 299 ファイルの短縮、grep ノイズ除去 | — |
| F3 | **`.neo-1` ガードの単一タグ化**（D5） | 小〜中 | 負荷減＋追記漏れバグの根絶 | 基幹変更〔要許可〕 |
| F4 | **ヘッダー `>` の自動検証**（B10） | 小（スクリプト） | 配線情報の信頼回復 | `admin/` に Python を追加。付録 §1 を流用可 |
| F5 | **リリースビルドスクリプト**（C3） | 小 | 配布サイズ削減・事故防止 | `admin/build_release.py`：`.zip .lnk .pptx .vsix .py .txt .url` と `admin/` を除外 |
| F6 | **JSON 正規化**（C1） | 小（機械変換）＋検証 | 外部ツール互換・将来バージョン耐性 | 変換後は必ず実機で `/reload` |
| F7 | **タイマー統合**（E3） | 大 | objective 6 減、タイマー処理の一元化 | 参照 200 箇所超 |
| F8 | **未参照関数の棚卸し**（B9） | 中（人手判断） | 保守対象の明確化 | 削除ではなく「未参照」マークが第一段階 |

---

## G. 1.21 系への移植（最大コスト。着手前に作者判断）

| 項目 | 影響範囲（実測） | 備考 |
|---|---|---|
| `CustomModelData` NBT → `custom_model_data` コンポーネント | 進捗の `"nbt":"{CustomModelData:N}"` 約 2,000 箇所、loot の `set_nbt` 1,850 件、mcfunction 内 `nbt={…CustomModelData…}` 多数 | ID 体系は温存可。スプレッドシート出力を 1.21 形式に切替えて再生成するのが現実的 |
| `display:{Name,Lore}` → `custom_name` / `lore` コンポーネント | loot 1,850 件 | 同上 |
| フォルダ複数形→単数形（`functions/`→`function/` 等） | 全体 | ヘッダー `=/function neofunction:` は名前空間パスなので不変 |
| `Attributes:[{Name:generic.x}]` → `id:"minecraft:x"`（1.21.2+） | `asset/summon/*` 803、`entity/attribute/*` | — |
| `DeathLootTable` による種族 ID | 図鑑 `looking_at.nbt` 検知（801 件） | 1.21 でも NBT は残るが、`looking_at` の条件形式変更を要確認 |
| テキストコンポーネントの SNBT 化（1.21.5+） | tellraw 数千行 | 最後まで先送り可（JSON 文字列は当面互換） |

---

## 付録 §1. 検証・一覧再生成コマンド（`data/` 直下で実行）

```bash
# 存在しない関数呼び出し（コメント・マクロ行を除く）
python3 - << 'PY'
import os,re,collections
funcs={ns+':'+os.path.join(r,f)[len(f'{ns}/functions/'):-11]
       for ns in os.listdir('.') if os.path.isdir(f'{ns}/functions')
       for r,_,fs in os.walk(f'{ns}/functions') for f in fs if f.endswith('.mcfunction')}
pat=re.compile(r'(?<![\w$])function\s+([a-z0-9_.\-]+:[a-z0-9_./\-]+)')
c=collections.Counter()
for f in funcs:
    ns,p=f.split(':')
    for line in open(f'{ns}/functions/{p}.mcfunction',encoding='utf-8',errors='replace'):
        if line[:1] in '#$': continue
        for m in pat.finditer(line):
            if m.group(1) not in funcs and 'animated_java' not in m.group(1): c[m.group(1)]+=1
for t,n in c.most_common(): print(n,t)
PY

# 進捗の rewards.function 不在
grep -rhoE '"function"\s*:\s*"neofunction:[^"]+"' */advancements | sed -E 's/.*"(neofunction:[^"]+)"/\1/' | sort | uniq -c | sort -rn \
 | while read n f; do p="neofunction/functions/${f#neofunction:}.mcfunction"; [ -f "$p" ] || echo "$n $f"; done

# 厳密 JSON 不正ファイル
find . -name '*.json' -print0 | xargs -0 -I{} sh -c 'python3 -m json.tool "{}" >/dev/null 2>&1 || echo "{}"'

# ヘッダー = とパスの一致（不一致 0 件を維持）
find . -name '*.mcfunction' | while read f; do p=$(grep -am1 '^# =/function ' "$f" | sed 's|# =/function ||'); e=$(echo "$f" | sed -E 's|^\./([^/]+)/functions/(.*)\.mcfunction$|\1:\2|'); [ "$p" != "$e" ] && echo "MISMATCH $f"; done
```

## 付録 §2. C1（生の改行）を機械的に直す例

```python
# 文字列リテラル内の生の改行を \n に置換（JSON トークナイザを簡易実装）
import sys,re
def fix(t):
    out=[];ins=False;esc=False
    for ch in t:
        if ins:
            if esc: esc=False
            elif ch=='\\': esc=True
            elif ch=='"': ins=False
            elif ch=='\n': out.append('\\n'); continue
            elif ch=='\r': continue
        elif ch=='"': ins=True
        out.append(ch)
    return ''.join(out)
for p in sys.argv[1:]:
    s=open(p,encoding='utf-8').read(); n=fix(s)
    if s!=n: open(p,'w',encoding='utf-8').write(n); print('fixed',p)
```
実行前に対象ファイルをバックアップし、実行後に `python3 -m json.tool` で全件パース → 実機 `/reload` で表示崩れ（説明文の改行）が無いことを確認する。

---

## 着手順の提案

1. **A1・A12・D2・D3**（各 1〜6 行、効果大、確度◎）→ 要許可分をまとめて1回で承認をもらう。
2. **A2**（方針決定：空関数 vs JSON 修正）→ スプレッドシート側で直せるなら再生成。
3. **A3〜A10**（機能が黙って死んでいる箇所）→ 各 1 ファイル。
4. **D1・E1**（攻撃周りの負荷と緩衝体力の精度。作者が最も気にしている領域）。
5. **C1・F5**（データ健全性と配布物）。
6. **B9・B10・F4**（棚卸しと配線情報の回復。人手判断が要るので最後）。
