# 命名：reward_build
# 説明：ボスを倒したあと：固定の宝箱「涸れ泉の宝」（950, 40, 3155、中身は後で）と rank3 の宝箱 3 つ（✯3 Random LootTable、neofunction:chest/3）、帰還ゲート（カエルのボスのゲートを写したストラクチャー rubra/d2_gate。中のエンドゲートウェイの出口が水守の館の中（954, 45, 3273））を出す
# 実行条件：どこでも（ボス部屋のチャンクが読み込まれていること）
# >/function neofunction:entity/skill/boss/rubra_keeper/dead
# =/function neofunction:system/rubra/d2/reward_build

# 内容
function neofunction:system/rubra/d2/reward_clear
execute in neodimension:ceresta_festa positioned 950.5 41 3155.5 run particle minecraft:end_rod ~ ~ ~ 3 1 2 0.1 150 force @a[distance=..64]
execute in neodimension:ceresta_festa positioned 950.5 41 3155.5 run playsound minecraft:block.amethyst_block.resonate block @a[distance=..64] ~ ~ ~ 2 0.7
execute in neodimension:ceresta_festa run setblock 950 40 3155 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 950 40 3155 {CustomName:{"text":"涸れ泉の宝","color":"#4FA8D8","bold":true,"italic":false},Items:[]}
execute in neodimension:ceresta_festa run setblock 948 40 3156 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 948 40 3156 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 952 40 3156 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 952 40 3156 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 950 40 3157 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 950 40 3157 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run place template neofunction:rubra/d2_gate 948 39 3134
execute in neodimension:ceresta_festa positioned 950.5 40 3155.5 run tellraw @a[distance=..64] {"text":"番人の足もとから澄んだ水が湧き、光の門のかたちをとった。","color":"#B8D8FF","italic":true}
