# 命名：wash
# 説明：【追加：2026-10-09 ルブラ編】四隅の水門がすべて開いた：澄んだ水が番人を洗い、黒い部分が消えて 12 秒（240 tick）のあいだ攻撃が通る。水門は閉じ、第 1 段階なら床の黒い水溜まりも流れる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/valves_tick
# =/function neofunction:entity/skill/boss/rubra_keeper/wash

# 内容
data modify storage neofunction:rubra keeper.wash set value 240
data modify storage neofunction:rubra d2.kopen set value {v1:0,v2:0,v3:0,v4:0}
effect clear @s minecraft:resistance
execute as @e[type=block_display,tag=rubra_keeper_black] run data merge entity @s {view_range:0.0f}
# 【追加：2026-10-09】攻撃が通る合図：像を青く光らせ、水門の柱を水色に戻す
execute as @e[type=block_display,tag=rubra_keeper_part] run data merge entity @s {Glowing:1b,glow_color_override:8379391}
execute as @e[type=interaction,tag=rubra_kvalve] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
title @a[distance=..40] actionbar {"text":"番人が洗われた！　今のうちに攻撃を！（12 秒）","color":"#7FFFD4","bold":true}
# 【変更：2026-10-14】床の黒い水（水溜まり・第二段階の帯）はどの段階でも全部流す。帯は黒が戻るとき（reblack）に敷き直す。黒い滴りも流れて消える
fill ~-22 ~ ~-22 ~22 ~2 ~22 minecraft:air replace minecraft:black_carpet
execute as @e[type=drowned,tag=rubra_drip,distance=..32] at @s run particle minecraft:splash ~ ~1 ~ 0.3 0.6 0.3 0 30 normal
execute as @e[type=drowned,tag=rubra_drip,distance=..32] run tag @s add del
particle minecraft:splash ~ ~4 ~ 1.5 2.5 1.5 0 400 normal
particle minecraft:bubble_pop ~ ~3 ~ 1.5 2 1.5 0.05 80 normal
playsound minecraft:entity.player.splash.high_speed hostile @a[distance=..48] ~ ~3 ~ 2 0.8
playsound minecraft:block.beacon.power_select hostile @a[distance=..48] ~ ~3 ~ 1 1.4
tellraw @a[distance=..40] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「黒い筋が流れ落ちた……今です、旅人さん！」"}]
