# NeoFunctions コーディング規約 — 明示5 ＋ 暗黙14

「明示」は README・関数ヘッダーに文章で書かれているもの。「暗黙」は書かれていないが全ファイルが従っており、破ると壊れるもの。各項目に実測の根拠を付す。

## 明示された規約

### R1. ヘッダー5行（README「ヘッダー統一プロンプト」）
```
# 命名：名称などあればこちらに移動して記載
# 説明：一行程度の軽いまとめ（複数ある場合は行を分けたまま残し、無理に1行へ結合しない）
# 実行条件：（あれば記載。複数あれば複数行のまま）
# >呼び出し元（自身のパスの一段上。あれば記載。複数ある場合は1行ずつ改行して列挙）
# =自身のパス（必ず最後の行。/function neofunction:〜 の形式で統一）
```
- 命名：元に「命名」「名称」があればそれ、無ければファイル名（拡張子抜き）。
- 説明：「説明」「内容：」ラベル付き行とラベル無しコメント行をすべて説明扱い。複数行は結合しない。
- 実行条件：説明の下・呼び出し元の上。
- `>`：`/function` が無ければ付与して正規化。無ければ `# >` のみ残す。進捗からの呼び出しは `>/advancement neofunction:…`、`/trigger` からは `>/trigger slotR set 1` のような記法も既存にある。
- `=`：元の記載は信頼せず、格納場所から機械的に再計算。**必ず最後の行**。
- ヘッダー判定は「先頭から `#` 行が連続する区間」。空行で終了。以降の `# 内容` 等には触れない。
- 実測：4,167/4,167 が「命名」と末尾 `=` を持つ。`>` 4,141。「実行条件」257。「(呼び出し元が見つかりませんでした)」8。`=` とパスの不一致 0。整形ツール `admin/mcfunction-header-0_4_0.vsix`（自作 VSCode 拡張）が同梱。

### R2. ファイル名（README「その他」）
「ファイルの命名はできるだけ大文字を使わないでね。基本ナンバー、必要なら小文字省略語、どうしてもの時は型変数（CamelCase）」。
実測：大文字を含む .mcfunction 0件。純数字ファイル名 2,235（54%）。CamelCase はタグ名側（`LTPivot` `FrogBoss` `UUIDchecked` `MusicStop`）。

### R3. 本文は `# 内容` から（README サンプル「2行くらい空白開けてね」）
実測：1,803 ファイルに「内容」見出し。表記ゆれ `# 内容` `## 内容` `#内容` `## 内容：`。既存分は直さない。新規は `# 内容`。

### R4. 階層と負荷（tick.mcfunction / entity/tick / entity/skill/.neo-1 のヘッダー）
- 「実行の起点毎にファイルを大別して以下の階層を制御している。ノートPCで遊ぶ人のため軽量化に注力せよ！進捗やクロック処理（スケジュール）などは『システム』の階層に、常時処理を使用しない『データベース』はアセットの階層に。」
- 「毎tick @e 重い！減らせ！！！」「この階層は本当に超大事だから最低限『.spawnの階層構造理解してから』確認して編集するようにして」。
- 「ここのコマンド数をむやみに増やすな！丁寧に子関数に逃がせ」。
- 「エフェクト検知（超オモイ！極力実装しません。」

### R5. コメント文化
`minecraft/tags/functions/tick.json` 先頭：「コードはいつか読むかもしれない誰かのために適切にコメントを遺しましょう」。説明が無いものは「（説明未記載）」プレースホルダ。旧処理は消さずコメントアウトで残す（`# 旧・通知`、`#execute as @s[type=creeper…]` など多数）。

## 暗黙の規約

### I1. ドット始まりは「入口／内部専用」
`.neo`（77件）＝そのフォルダのディスパッチャ。`.macro` `.all` `.get_entity` `.spawn` `.clock` `.all_trigger_make` `.setting` `.dim`。直接呼ぶものではない補助を示す。

### I2. 進捗パス ＝ 処理関数パス
`advancements/<trigger>/<id>.json` の `rewards.function` は `system/adv/<trigger>/<id>`。`tick/` 配下だけ `cmd/csgui/quest/looking_at/entity_scores/…` に細分。表示用進捗（`neoadvancement`）の報酬は `player/level/give/*` か `asset/*` を指す。

### I3. 検知進捗は `.clock/*` を親にし、処理側で revoke しない
周期関数が `revoke @a from .clock/Ns` で一括再装填。例外：`tick/entity_scores/*`（trigger, continue, CT, heal, doom…）は「1回きり」の意味を持つので処理側で `advancement revoke @s only …`。また `inventory_changed/star` のように処理側で `revoke @s only` する個別例もある（既存に倣う）。

### I4. 削除は kill ではなく `tag del`
`entity/skill/del` が `{Health:0f,AbsorptionAmount:0f,DeathTime:19s,DeathLootTable:"empty",Silent:true,Size:0,DropItem:0b}` をマージしてから kill。周期版 `del1s del10s del300s del1200s`。`familiar` は削除時に専用メッセージ。

### I5. 一時タグは同じ関数内で必ず外す
`hit` `attacker` `looked` `lookedGroup` `interacted` `hooked` `resolve` `temp_display` `go` `test`。付ける→使う→remove を1関数で完結。残留は次の検知で誤爆する。

### I6. マクロは「N.mcfunction を $(key) で呼ぶ」薄い入口
`asset/summon` `asset/item` `asset/skill` は1行の `$function …/$(summon)`。引数名＝フォルダ名。汎用ループ `asset/nbt/for {Function,List}`。マクロ引数はストレージ `neofunction:trigger` / `:temp` 経由か、呼び出し時の `{Name:"130"}` 直書き。

### I7. ガード節を先頭に
`execute if entity @s[tag=!…] run return run …`、`execute at @s unless entity @a[distance=..64,limit=1] run return 0`。ディスパッチャは「該当しないものを先に弾く」→「距離で弾く」→「タグ別に子関数」。

### I8. 偽プレイヤーの接頭辞
- `#Calc…` `#count…` `#frog…`：計算・カウンタ用（`#` でサイドバー非表示）
- `$N const`：定数
- `%LTAngle` `%5` `%10`：数学ライブラリ系
- 接頭辞なし小文字（`night` `nosp` `random` `froggame` `harvest`）：機能フラグ・共有値。**-1 が ON**（`execute if score night temp matches -1`）。
- `1c..9c temp`：星屑カウンタ（`unless score … matches -2147483648..2147483647` で未初期化判定してから set）。

### I9. 実行順は数字接頭辞
`setting/1_…9_…`、`level/0_first_get_exp…3_lvl_up`、`.spawn/obj/item/3_item_to_summon…5_item_to_quest`、`log-in/0..5`（ErrorCode）、`system/1_detection`（コメント参照）。

### I10. スコア objective には日本語の表示名
`scoreboard objectives add HP dummy "【耐久力】HP表示用"`。プレイヤーに見えるものは「【カテゴリ】説明」、内部用は「LevelSync 計算用(own)」のように用途。

### I11. 開発者向け通知は creative 限定
初期化関数冒頭の `tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:…"}` が実行トレース。旧式警告 `注：旧式の処理です！`。ログ用 hover に `log > neofunction:…`。デバッグ表示は `@s[tag=ad_info]`。

### I12. 非表示値は numberformat blank
サイドバー装飾行 `upper=99999` `downer=-99999` `url=-100000` で並び順を固定し `display numberformat blank`。

### I13. 大量の選択肢はストレージ配列に
改良作業台レシピ `storage neofunction:crafter crafter_recipe` に `append`。会話・イースターも `storage :talk :main_story`。関数を増やして分岐しない。

### I14. 発火媒体は「バニラアイテム＋NBT」
紙・構造物ブロック・スポーンエッグ・花火の星・小麦を `.spawn/obj/item/*` で解釈し、NBT の `summon/skill/quest` キーで振り分け。新機能を足すときに既存アイテム ID を消費しない。`DeathLootTable` が種族 ID、`CustomModelData` がアイテム ID。

## 追加時の対応表（何を足したら、どこも一緒に足すか）
| 足すもの | 揃えるファイル |
|---|---|
| アイテム N | `loot_tables/item/N.json`、`neoadvancement:neoitem/N.json`（parent は N-1）、効果があれば `advancements/<trigger>/N.json` + `system/adv/<trigger>/N.mcfunction`、図鑑 EXP は `player/level/give/item/<rank>` |
| エンティティ N | `asset/summon/N.mcfunction`（Tags, DeathLootTable 必須）、`loot_tables/asset/summon/N.json`、`neoadvancement:neoentity/N.json`（parent は N-1）、常時スキルがあれば `entity/skill/<tag>` + `.neo-1` 追記（要許可） |
| スキル N | `asset/skill/N.mcfunction`、`neoadvancement:neoskill/N.json`、`storage neofunction:skill` の該当構造、`trigger/on/.macro` 経由で発動可能なこと |
| 周期処理 | `entity/skill/clock/Ns` か `player/*` に1行＋子関数（`clock/N_second` 自体は要許可） |
| 進捗検知 | `advancements/<trigger>/<id>.json`（parent `.clock/*`）+ `system/adv/<trigger>/<id>.mcfunction`、既存 `.all` への相乗り1行は要許可 |
| 設定フラグ | `temp` 偽プレイヤー（-1 で ON）＋ `system/option/<name>.mcfunction` トグル |
