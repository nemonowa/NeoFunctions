# 命名：flush
# 説明：【追加：2026-10-09 ルブラ編】黒い水の溜まりの上の水門を開ける：澄んだ水が流れ込んで、通路の黒い水（黒いカーペット）を押し流す。一度だけ。【変更：2026-10-14】壁画の間の水門二つが同時に開いたとき（fvalve_tick から）。南の口の黒い水の膜（seal）も消える
# 説明：黒い水の範囲は目印 rubra_flush から x-2〜x+2・z-4〜z+4、高さは目印と同じ
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/rubra/d2/fvalve_tick
# =/function neofunction:system/rubra/d2/flush

# 内容
execute if data storage neofunction:rubra d2{flushed:1b} run return 0
data modify storage neofunction:rubra d2.flushed set value 1b
execute as @e[type=marker,tag=rubra_flush] at @s run fill ~-2 ~ ~-4 ~2 ~ ~4 minecraft:air replace minecraft:black_carpet
execute as @e[type=marker,tag=rubra_flush] at @s run particle minecraft:splash ~ ~0.5 ~ 2 0.3 4 0 300 normal
execute as @e[type=marker,tag=rubra_flush] at @s run playsound minecraft:block.water.ambient block @a[distance=..32] ~ ~ ~ 2 0.6
execute as @e[type=drowned,tag=rubra_drip,distance=..32] run tag @s add del
tellraw @a[distance=..32] {"text":"二つの水門から澄んだ水がどっと流れ込み、通路の黒い水と、階段の口をふさいでいた黒い膜を押し流していった。","color":"#7FD8FF","italic":true}
execute in neodimension:ceresta_festa run fill 973 52 3153 975 56 3153 minecraft:air replace minecraft:black_stained_glass
execute in neodimension:ceresta_festa run particle minecraft:splash 974 54 3153 1.2 1.5 0.3 0 200 normal
execute as @e[type=interaction,tag=rubra_fvalve] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
tellraw @a[distance=..32] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「水門をいくつも同時に開けると、澄んだ水が黒い水を押し流す……この先の番人も、きっと同じ」"}]
