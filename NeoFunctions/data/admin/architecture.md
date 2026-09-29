# NeoFunctions アーキテクチャ詳細

SKILL.md 第3章の詳細版。数値はすべて実ファイル走査による実測（2026-09 時点、ver1.0 for MC1.20.4）。

## 目次
1. 名前空間と規模
2. 起点：tick / load
3. スポーン審査（entity/.spawn）
4. 進捗＝イベント（advancements ↔ system/adv）
5. .clock 親進捗
6. 被弾相手の特定（UUID 二進展開）
7. 周期クロック（system/clock）
8. ロード・ログイン・初期化
9. データの置き場所
10. ID 体系
11. trigger（プレイヤー入力）
12. サブシステム入口一覧
13. 既知の負債（作者が自己申告しているもの）

## 1. 名前空間と規模
| 名前空間 | 役割 | 規模 |
|---|---|---|
| `neofunction` | ロジック本体 | mcfunction 約4,000、検知進捗 約1,900、loot_tables/item 1,850、loot_tables/asset/summon 1,099、asset/summon 803、asset/skill 170 |
| `neoadvancement` | プレイヤーに見せる進捗（図鑑・スキル表・チュートリアル・エンチャ説明） | neoitem 1,847、neoentity 801、neoskill 261、anchor/nexus/ceresta/enchantdescription |
| `neodimension` | 独自次元 `nexus` `ceresta_festa`、バイオーム14 | — |
| `admin` | 制作者ツール（give/loot/teleport/tellraw、旧アイテム更新 `system/update`） | 配布ロジックから依存させない |
| `minecraft` | バニラ上書き（`tags/functions/tick,load`、ブロック loot 21、trim、nether dimension） | — |

`neofunction/functions/` の4階層：`system/`（起点・進捗受け口・クロック・設定・trigger・ストレージ）、`player/`（@a 起点）、`entity/`（@e 起点）、`asset/`（呼ばれるだけのデータ）。

## 2. 起点
```
#minecraft:load → neofunction:load
   ├ tellraw "Reloaded!!"（クリックで /trigger kill＝詰み防止の自決）
   ├ schedule asset/event/log-in 1s replace
   └ levelStatsSync temp = -1 なら system/levelstatssync/load

#minecraft:tick → neofunction:tick（順序固定）
   ├ system/tick   0-0-0-0-1 を毎tick ~20 回転（生存確認・時計）
   ├ player/tick   advancement revoke @a from .clock/1t
   │               @a[scores={SP=1..}] → player/job/.neo
   │               @a[scores={death=1}] → player/survival/death
   │               marked 近傍でタイトル、adventure&&!argonaute → player/mode/.neo
   └ entity/tick   @e[tag=!check] → entity/.spawn/.neo
                   @e[scores={death=2..},type=player] → player/survival/respawn
                   @e[tag=!vanilla,tag=check] → entity/skill/.neo
                   @e[tag=portalcooldown,predicate=portalcooldown] → tag del
                   @e[tag=del] → entity/skill/del
```

## 3. スポーン審査（entity/.spawn/.neo）
1. **タグ判定**：`@s[tag=]`（タグ無し）→ `vanilla`。タグあり → `.spawn/tag`：
   `inv`（透明化）`ghost`（無敵+透明）`system/god/king/boss/elite`（ボス系初期化、`boss` 以外は `nobossbar`）`despair`、`except` で以降スキップ、`lv0`〜`lv9` → `entity/attribute/lv/N`。
2. **HP 判定**：`team=!NonExsitentTeam` に一致＝生物 → `.spawn/mob`、不一致 → `.spawn/obj`。
   - mob：`tag mob`、`#neofunction:ally`→`ally`、`#neofunction:safe`→`safe`、他→`enemy`（`soul1..4` を各1%、夜バフ、ゾンビ系の変身抑止、slime/shulker/ghast に `cuboid`）。装備ドロップ禁止、`Health:1024f` で全快、`HPmax` 記録、ceresta 次元なら60%でモブ入替、`uuidcheck`。
   - obj：`tag obj`、item / area_effect_cloud / arrows / snowball / spawner_minecart / display / fishing_bobber / ender_pearl を個別処理。item は `.spawn/obj/item/.neo` で「起動媒体」を解釈（ネザースター→attract、紙→マクロ、構造物ブロック→釣り代替、`{summon:N}`→`3_item_to_summon`、`{skill:N}`→`4_item_to_skill`、`{quest:N}`→`5_item_to_quest`）。
3. **チーム**：未所属なら `.spawn/team`（ally→green、safe→gray、enemy→red、player→white、spawner_minecart→dark_blue、ghost→white、king→dark_red、argonaute→light_purple。後勝ち）。
4. `PortalCooldown≠0` → `portalcooldown`。最後に `tag check`。

## 4. 進捗＝イベント
フォルダ名＝トリガー名。`advancements/<trigger>/<id>.json` の `rewards.function` は常に `system/adv/<trigger>/<id>`。

| フォルダ | 件数 | 共通入口 `.all` | 典型的な用途 |
|---|---|---|---|
| `entity_hurt_player` | 613 | `.all`（`attacker` タグ特定） | 防具セット効果、ボス攻撃反応 |
| `player_hurt_entity` | 424 | `.all` + `.get_entity`（`hit` タグ特定）→ 職業 combo、クリティカル、HP 表示 | 武器 CMD 別効果 |
| `player_interacted_with_entity` | 307 | — | NPC C.A.I.、村人、イースター100件 |
| `tick/cmd` | 39 | — | 手持ち CMD 検知（parent 1t） |
| `tick/csgui` `tick/looking_at` `tick/quest` `tick/entity_scores` `tick/item` `tick/dungeon` `tick/fireweapon` `tick/skill` | — | — | GUI、視線、クエストカウンタ、スコア閾値（trigger/CT/heal/doom/continue…）、銃 |
| `player_killed_entity` / `consume_item` / `fishing_rod_hooked` / `location` / `inventory_changed` | 111/91/70/47/31 | — | 撃破報酬、飲食、独自釣り、バイオーム進入、入手 |
| `shot_crossbow` `item_used_on_block` `enter_block` `used_totem` `effects_changed` `slept_in_bed` `bred_animals` `changed_dimension` `summoned_entity` `recipe_crafted` `player_generates_container_loot` `time_check` | 少数 | — | — |

新機能の相乗り先を決める手順：(1) どのトリガーで検知できるか → (2) その `<trigger>/.all` があるか（あれば `.all` から子関数を呼ぶ1行の追記を提案） → (3) 個別条件なら `<trigger>/<新id>.json` + `system/adv/<trigger>/<新id>.mcfunction` を新設。

## 5. .clock 親進捗
`advancements/.clock/{1t,1s,3s,5s,10s,30s,60s,300s,600s,1200s,3600s}.json` はすべて `trigger: minecraft:impossible`、`parent: .clock/.all`。
子進捗が達成されると親も達成状態になり、周期関数の `advancement revoke @a from .clock/Ns` で子孫ごと剥奪されるまで子は再発火しない＝クールダウン。1t は `player/tick` で毎tick revoke。
作者メモ `advancements/.clock/how.txt`：この方式（スケジュールペアレンツクロック）と、`time_check` 述語で `period` 指定する「周期指定単体クロック」の2種。

## 6. 被弾相手の特定
- `.spawn/mob/uuidcheck`：`UUID[0]` を `#Calc temp` に取り、符号 → `UUID-`/`notUUID-`、2^30〜2^0 のビット → `UUID30`〜`UUID0` タグ（`asset/nbt/for {Function:"…/uuid_macro",List:[30,…,0]}`）。最後に `UUIDchecked`。
- 各 `player_hurt_entity/N.json` は主条件 `requirement` に加え、被弾側 `entity.nbt` のタグを見る 31+1 個の criteria（`"30"`…`"0"`, `"-"`）を持つ。
- 処理側は `.get_entity {Name:"N"}` で「達成 criteria の組み合わせ」と一致するタグを持つ mob だけを `hit` に残す。処理後 `tag @e[tag=hit] remove hit`。
- 1s クロックが `@e[tag=mob,tag=!UUIDchecked]` を拾って古い個体を補正する。

## 7. 周期クロック
`system/setting` → 60t 後 `clock/all_clock_start` → 1/3/5/10/15/30/60/300/600/1200/3600 秒の11本を起動。各関数は末尾で `schedule clear` → `schedule function … Ns` の自己再登録。
1秒クロックの主な仕事：`.clock/1s` revoke、`CT` 減算、職業パッシブ、SP 枯渇/超過、加護タイマー、`entity/skill/clock/1s`、`no_dmg_timer`、`del1s`、dps、古い mob の UUID 補正。
各周期は `entity/skill/clock/Ns` を持ち、タグ別のエンティティ周期処理はそこへ置く（`chair`、`limit`、`clocker`、ボスの周期攻撃など）。

## 8. ロード・ログイン・初期化
```
/reload または リログ（continue=leave_game 統計 → tick/entity_scores/continue）
 └ asset/event/log-in（1s後。実行者：reload=サーバー、relog=当該プレイヤー）
     属性再計算 / .all_trigger_enable / version 記録 / 音楽 / HC 対策 / display 再描画
     schedule: server 3s → cai1 5s → cai2 7s → log-in/.neo 10s
        └ log-in/.neo：正常性チェック（上から順に return）
            0 nexus チャンク未読込 → forceload
            1 0-0-0-0-1 不在 → 再召喚
            2 目印 redstone_block 無 → 再設置
            3 storage neofunction:asset version 無 → 初期化
            4 score upper world 無（初回）→ hello_world + system/setting
            5 version world ≠ 3700 → 更新処理
            全通過 →「全システムの回復を確認。ステータス『オール-グリーン』」
system/setting（初回のみ、schedule で分割）
  10t 1_gamerule_for_survival / 15t 1_gamerule_for_creater / 20t 2_scoreboard（93 objective + trigger 作成 + bossbar + setdisplay）
  30t 3_scoreboard_set（サイドバー world）/ 40t 4_team（19色 + elite/boss/king）/ 50t 5_storage（tutorial, crafter レシピ配列, aj ServerCount）/ 60t all_clock_start
```
`0-0-0-0-1`：UUID `00000000-0000-0000-0000-000000000001` の固定エンティティ。nexus (1280,128,1280) 常駐。ワールド共有スコア（`LVL`/`DEF` の持ち主）。不在なら再召喚される。
`hello_world` は forceload、`storage asset version` 初期化、`2_scoreboard` 即時実行、`setting` と `log-in/.main` を schedule。

## 9. データの置き場所
- **スコア（93）**：`system/setting/2_scoreboard` のみが作成。基礎 `EXP LVL HP HPmax SP SPmax CT DEF MiningSpeed depth temp ShardC`、LevelSync `lv_max ls_*`、SP% `SP1p..SP200p`、統計 `food health deathCount death totalKillCount survival(play_time) continue(leave_game) dush jump sneak_time Cstick Mstick horseMove traded_with_villager minedSpawner break_wheat DamageDealt/Absorbed/Resisted`、タイマー `prog prog_timer ceres ceres_timer generaltimer(flag) no_dmg_timer venedictiontimer(flag) MusicTimer MusicStop`、状態 `name roll job karman infection doom heal flag quest questsuccesscount mainquest main_story logAnchor logEntity logItem enemyKillCount`、trigger 9種。
  コメント「スコアボードはエンティティ、特にプレイヤーごとに頻繁に変化する値をとるものだから不必要に増やさないで」。
- **偽プレイヤー**：`temp`（`#Calc1/2/3` `#CalcX1..Z2` `%LTAngle(B)` `random` `levelStatsSync` `night` `nosp` `progress_mode` `froggame` `FarmingFortune` `harvest` `slot` `survival` `#count215` `#frogsoundrandom` `1c..9c`）、`world`（`time level upper version credit difficulty downer url`）、`const`（`$-1 $0 $1 $2 $10 $100 $1000 $1200 $10000 $100000`）、`EXP`（`star temp tempb`）。
- **ストレージ**（参照回数順）：`neofunction:skill`(2258) `main_story`(729) `asset`(492) `crafter`(336) `item`(293) `pos`(124) `gui`(115) `dungeon_tmp`(84) `duplicator`(81) `music`(69) `tamer`(49) `job`(48) `bossbar`(39) `fireweapon`(38) `temp`(36) `tutorial`(28) `talk`(24) `inf_bundle`(22) `harvest`(21) `motion`(16) `trigger` `aj`。
- **チーム**：色名16 + `elite` `boss` `king`。
- **タグ語彙（参照数上位）**：`LTPivot`(1026) `enemy`(411) `quest`(293) `MusicStop`(255) `temp_display`(173) `hit`(119) `attacker`(114) `cai`(100) `froggame`(99) `interacted`(91) `hooked`(84) `resolve`(83) `looked`(75)。種別 `mob obj enemy ally safe boss elite king god vanilla check except`、削除 `del del1s del10s del300s del1200s`、機動 `fly0..4 upper downer air roll leader look`、一時 `hit attacker looked interacted hooked resolve temp_display`。

## 10. ID 体系
- **アイテム**：`CustomModelData:N` ＝ `loot_tables/item/N.json`（`set_nbt` で `display.Name/Lore`, `rare:1`, `CustomModelData`）＝ `neoadvancement:neoitem/N`（`inventory_changed` で検知、`player/level/give/item/<rank>` で EXP）。効果は `advancements/tick/cmd/N`（手持ち）、`player_hurt_entity/N`（武器）、`entity_hurt_player/N`（防具）、`consume_item/N`（飲食）。CMD は 0〜1847 をほぼ連番、`-2/-3/-33/995〜999` はシステム用。4連番（例 1010〜1013）は防具セット、判定は先頭 ID で代表。
- **エンティティ**：`asset/summon/N.mcfunction`（summon 1行＋`Tags` と `DeathLootTable:"neofunction:asset/summon/N"`）＝ `loot_tables/asset/summon/N.json` ＝ `neoadvancement:neoentity/N`（`looking_at.nbt` で DeathLootTable を検知）。**DeathLootTable が種族 ID** として `nbt={DeathLootTable:"…"}` の判定に使われる。
- **スキル**：`asset/skill/N.mcfunction` ＝ `neoadvancement:neoskill/N`（習得状態、200/210/220/230/240/250 が knight/aria/shooter/tamer/doctor/assasin の根）＝ `storage neofunction:skill`。発動は `/trigger on set N` → `trigger/on/.macro`。
- **trigger code**：1〜16 汎用（1,2 挨拶、3 目標表示、8 異名、9 キャンセル、10 イベント、11 サブクエ取消、12/13 アンカー方向）、20番台 星屑交換、61番台 スキルスロット、`1234567890`/`20210516` 隠し。

## 11. trigger
`tellraw` のクリック → `/trigger <obj> set N` → 進捗 `tick/entity_scores/trigger/<obj>`（`entity_scores` で `min:1`）→ `system/trigger/<obj>` → スコアを `storage neofunction:trigger` に転記 → `<obj>/.macro` で `$function …/$(obj)`。
再装填3点セット：`scoreboard players set @s <obj> 0` → `scoreboard players enable @s <obj>` → `advancement revoke @s only tick/entity_scores/trigger/<obj>`。
objective：`on`（スキル発動）`skill`（習得・「旧式の処理です」）`code`（汎用）`tip` `kill`（自決）`teleport` `slotR/G/B`（スキルスロット）。`.all_trigger_enable` がログイン毎に enable。

## 12. サブシステム入口一覧
| システム | 入口 | 状態 |
|---|---|---|
| レベル/EXP | `player/level/0_first_get_exp → 1_get_exp → 2_exp_to_lvl → 3_lvl_up`、`level/give/*` | `EXP LVL depth`、共有 `star EXP` |
| 属性 | `player/attribute/lvl` → `lvl/0..100`、`entity/attribute/lv/0..9`、`attribute/night` | attribute base |
| SP | `player/sp/luck` `over` `percentage` | `SP SPmax SPxxp` |
| 職業 | `player/job/.neo` → `job/<name>/.neo`、combo は `player_hurt_entity/.all` → `job/<name>/combo` | `neoskill/2x0`、`storage :job` |
| 死亡/復活 | `player/survival/death`（death=1）`respawn`（death≧2） | `death doom infection CT` |
| 緩衝体力 | `clock/1_second` → `player/absorption/heal_full` | `no_dmg_timer`, tag `absorphealed` |
| GUI | `advancements/tick/csgui` → `player/inventory/csgui/slot/*`、`csgui/fsanvil`、item_modifiers `csgui/anvil/*` | `storage :gui` |
| クエスト | `system/adv/tick/quest/{10,20,30}`、`quest/counter`、`quest/tag`、`asset/event/quest` | `quest questsuccesscount main_story`、`storage :main_story` |
| メインストーリー/会話 | `asset/event/prologue*` `talk/*` `caisuport` `tutorial` | `storage :talk :tutorial :main_story` |
| オプション | `system/option/*` | `night nosp levelStatsSync bossArmorProtection temp`（-1 で ON） |
| ボス | `entity/skill/boss/.neo` → `boss/{larusha,frog_boss,ekiriburiamu,…}` | tag/team `boss`、`asset/bossbar/*` |
| 独自釣り | `advancements/fishing_rod_hooked/*`、`loot_tables/fishing/*`、`entity/skill/lava_fishing` | tag `hooked` |
| 銃 | `advancements/tick/fireweapon`、`item_modifiers/gun/*` | `storage :fireweapon` |
| 改良作業台 | `system/crafter/*` | `storage :crafter crafter_recipe` |
| 交換/星屑 | `system/exchange/give/*`、trigger code 20番台 | `1c..9c temp`, `credit world` |
| 音楽 | `system/music/*`、`asset/event/log-in/music` | `MusicTimer MusicStop`, tag `MusicStop/Change/Reset`, `storage :music` |
| ダンジョン | `system/adv/tick/dungeon/*`、`asset/event/froggame`、`structures/` | `storage :dungeon_tmp` |

## 13. 既知の負債（作者コメントより）
- `clock/1_second` の緩衝体力回復「この検知は正確ではない…いつか修正希望」。
- 「色彩神殿のエンパと跳躍対策、今後汎用処理に移動予定」。
- プロローグタイマー「いつか汎用タイマーに統合したい（切実）」。
- 1s クロックの `@e[type=item,nbt=…]` ネザースター検出「ちょい重いかなぁ？」。
- `trigger/skill` は「旧式の処理」、`on` へ移行中。
- 配布物に `.zip .lnk .pptx .vsix .py` が同梱（pack.mcmeta の filter は .lnk のみ除外）。
これらを「ついでに直す」のは禁止。依頼された時だけ、該当コメントを残したまま隣に新実装を置く。
