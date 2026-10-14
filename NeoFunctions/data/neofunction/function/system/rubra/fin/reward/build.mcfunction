# 命名：build
# 説明：【追加：2026-10-14 ルブラ編】討伐の報酬ゾーンを、星還りの空の真ん中（921, 200, 3282）に出す：真ん中に固定の宝箱（中身は後で）、まわり半径 4 に rare3（✯3 Random LootTable、neofunction:chest/3）の宝箱 8 つ、北にアンカー 139「星還りの空」、南に帰還ゲート（塔の一階へ）。【追加：2026-10-14】アンカーと宝箱のあいだにセレン（再戦・エリートチャレンジの受付、refight/selen）
# 説明：ボス戦の会場はそのまま場所として残る（舞台は片付けない）。再戦のときは reward/clear で消す（アンカーも）。実体はタグ rubra_reward（rubra_fin を付けないので、終章の片付け tidy_fin では消えない）。最初から check を付けて共通の出現処理を通さない
# 実行条件：どこでも（449 から。舞台のまわりのチャンクが読み込まれていること）
# >/function neofunction:system/adv/tick/quest/40/fin/449
# =/function neofunction:system/rubra/fin/reward/build

# 内容
function neofunction:system/rubra/fin/reward/clear
# 現れる演出
execute in neodimension:ceresta_festa positioned 921.5 201 3282.5 run particle minecraft:flash{color:[1.0,0.85,0.5,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute in neodimension:ceresta_festa positioned 921.5 201 3282.5 run particle minecraft:end_rod ~ ~ ~ 4 1 4 0.15 300 force @a[distance=..128]
execute in neodimension:ceresta_festa positioned 921.5 201 3282.5 run playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 3 0.8
execute in neodimension:ceresta_festa positioned 921.5 201 3282.5 run playsound minecraft:block.amethyst_block.resonate block @a[distance=..128] ~ ~ ~ 3 0.6
execute in neodimension:ceresta_festa positioned 921.5 201 3282.5 run tellraw @a[distance=..128] {"text":"舞台の真ん中に、星の名残の光が降りてきた。光は形を変え、いくつもの箱と、街へ続く光の門になった。","color":"#B8D8FF","italic":true}
# 真ん中の固定の宝箱（中身は後で）
execute in neodimension:ceresta_festa run setblock 921 200 3282 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 921 200 3282 {CustomName:{"text":"星還りの宝","color":"#FFC23D","bold":true,"italic":false},Items:[]}
# rare3 の宝箱 8 つ（真ん中を向く）
execute in neodimension:ceresta_festa run setblock 925 200 3282 minecraft:chest[facing=west]
execute in neodimension:ceresta_festa run data merge block 925 200 3282 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 917 200 3282 minecraft:chest[facing=east]
execute in neodimension:ceresta_festa run data merge block 917 200 3282 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 921 200 3286 minecraft:chest[facing=north]
execute in neodimension:ceresta_festa run data merge block 921 200 3286 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 921 200 3278 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 921 200 3278 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 924 200 3285 minecraft:chest[facing=north]
execute in neodimension:ceresta_festa run data merge block 924 200 3285 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 918 200 3285 minecraft:chest[facing=north]
execute in neodimension:ceresta_festa run data merge block 918 200 3285 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 924 200 3279 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 924 200 3279 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 918 200 3279 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 918 200 3279 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
# アンカー 139「星還りの空」（北、真ん中から 14 マス）：近づくと名前が出て、スキル 2 で解析できる（既存のアンカーと同じ：タグ marked・pos139）。転移先は storage pos:139
execute in neodimension:ceresta_festa run summon armor_stand 921.5 200 3268.5 {CustomName:{"text":"星還りの空","color":"#B8D8FF","bold":true,"italic":false},DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["check","rubra_reward","marked","roll","pos139"],Pose:{Body:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f]},equipment:{head:{count:1,id:"minecraft:beacon",components:{"minecraft:enchantments":{"minecraft:fortune":1}}}}}
data modify storage pos:139 name set value {"text":"星還りの空","color":"#B8D8FF","bold":true,"italic":false}
data modify storage pos:139 id set value 139
data modify storage pos:139 dimension set value "neodimension:ceresta_festa"
data modify storage pos:139 x set value 921.5d
data modify storage pos:139 y set value 200.0d
data modify storage pos:139 z set value 3270.5d
execute in neodimension:ceresta_festa positioned 921.5 201 3268.5 run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 60 force @a[distance=..128]
# 帰還ゲート（南、真ん中から 14 マス）：カエルのボスのゲートを写したストラクチャー rubra/tower_gate（中のエンドゲートウェイの出口が塔の一階 917, 48, 3284）。【変更：2026-10-14】表示エンティティの光の門から入れかえた
execute in neodimension:ceresta_festa run place template neofunction:rubra/tower_gate 919 199 3294
# セレン（再戦の受付。報酬を消しても残る：タグ rubra_sky_selen。いなければ出す）
execute in neodimension:ceresta_festa unless entity @e[type=mannequin,tag=rubra_sky_selen] run function neofunction:system/rubra/fin/refight/selen
data modify storage neofunction:rubra reward set value 1b
# 【追加：2026-10-15】舞台のまわりを safedungeon のバイオームにする（報酬の場所の音楽）。再戦・やり直しで reward/clear が boss に戻す
function neofunction:system/rubra/fin/reward/biome_safe
