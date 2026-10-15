# 命名：reward_build
# 説明：ボスを倒したあと：固定の宝箱「零の揺籃の宝」（949, -44, 3300、中身は後で）と rank3 の宝箱 3 つ（✯3 Random LootTable、neofunction:chest/3）、帰還ゲート（カエルのボスのゲートを写したストラクチャー rubra/tower_gate。中のエンドゲートウェイの出口が塔の一階（917, 48, 3284））を出す
# 実行条件：どこでも（ボス部屋のチャンクが読み込まれていること）
# >/function neofunction:entity/skill/boss/rubra_cradle/defeat
# =/function neofunction:system/rubra/d3/reward_build

# 内容
function neofunction:system/rubra/d3/reward_clear
execute in neodimension:ceresta_festa positioned 949.5 -43 3300.5 run particle minecraft:end_rod ~ ~ ~ 3 1 2 0.1 150 force @a[distance=..64]
execute in neodimension:ceresta_festa positioned 949.5 -43 3300.5 run playsound minecraft:block.amethyst_block.resonate block @a[distance=..64] ~ ~ ~ 2 0.7
execute in neodimension:ceresta_festa run setblock 949 -44 3300 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 949 -44 3300 {CustomName:{"text":"零の揺籃の宝","color":"#9B7FD0","bold":true,"italic":false},Items:[]}
execute in neodimension:ceresta_festa run setblock 947 -44 3301 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 947 -44 3301 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 951 -44 3301 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 951 -44 3301 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 949 -44 3302 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 949 -44 3302 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run place template neofunction:rubra/tower_gate 947 -45 3283
execute in neodimension:ceresta_festa positioned 949.5 -44 3300.5 run tellraw @a[distance=..64] {"text":"欠片の光が広間の北に集まり、地上へ続く光の門になった。","color":"#B8D8FF","italic":true}
