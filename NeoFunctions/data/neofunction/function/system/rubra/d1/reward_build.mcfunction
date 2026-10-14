# 命名：reward_build
# 説明：【追加：2026-10-14 ルブラ編】ソウルイーターを倒したあと：大空洞の北（立つ高さ y-40）に、固定の宝箱「紅脈の宝」（822, -40, 3250、中身は後で）と rank3 の宝箱 3 つ（✯3 Random LootTable、neofunction:chest/3）、坑道の入口へ戻る帰還ゲート（ストラクチャー rubra/d1_gate を x825〜829・z3251〜3255 に。エンドゲートウェイの出口が坑道の入口）を出す
# 説明：宝箱とゲートはブロックなので、setup の「古いものを消す」では消えない。reward_clear で消す
# 実行条件：どこでも（大空洞のチャンクが読み込まれていること）
# >/function neofunction:entity/skill/boss/rubra_worm/dead
# =/function neofunction:system/rubra/d1/reward_build

# 内容
function neofunction:system/rubra/d1/reward_clear
execute in neodimension:ceresta_festa positioned 822.5 -39 3250.5 run particle minecraft:end_rod ~ ~ ~ 3 1 2 0.1 150 force @a[distance=..64]
execute in neodimension:ceresta_festa positioned 822.5 -39 3250.5 run playsound minecraft:block.amethyst_block.resonate block @a[distance=..64] ~ ~ ~ 2 0.7
# 宝箱：真ん中に固定の宝箱（中身は後で）、まわりに rank3 を 3 つ
execute in neodimension:ceresta_festa run setblock 822 -40 3250 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 822 -40 3250 {CustomName:{"text":"紅脈の宝","color":"#D7263D","bold":true,"italic":false},Items:[]}
execute in neodimension:ceresta_festa run setblock 820 -40 3250 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 820 -40 3250 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 824 -40 3250 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 824 -40 3250 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
execute in neodimension:ceresta_festa run setblock 822 -40 3252 minecraft:chest[facing=south]
execute in neodimension:ceresta_festa run data merge block 822 -40 3252 {LootTable:"neofunction:chest/3",Items:[],CustomName:[{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true},{"text":" ✯3 Random LootTable ","color":"dark_aqua","bold":true,"italic":true,"underlined":true,"obfuscated":false},{"text":"neo","color":"dark_aqua","bold":true,"italic":true,"underlined":false,"obfuscated":true}]}
# 帰還ゲート：カエルのボスと同じストラクチャーを写したもの（rubra/d1_gate。中のエンドゲートウェイの出口が坑道の入口 882, 44, 3264）。床（y-41）から 5×7×5
execute in neodimension:ceresta_festa run place template neofunction:rubra/d1_gate 825 -41 3251
execute in neodimension:ceresta_festa positioned 822.5 -40 3250.5 run tellraw @a[distance=..64] {"text":"蟲が崩れたあとに、赤い光の名残が集まって、地上へ続く光の門になった。","color":"#B8D8FF","italic":true}
