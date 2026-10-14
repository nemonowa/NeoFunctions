# 命名：shell_break
# 説明：【追加：2026-10-09 ルブラ編】8 本の柱が灯った：黒い膜が剥がれ、15 秒（300 tick）攻撃が通る
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/form1
# =/function neofunction:entity/skill/boss/rubra_void/shell_break

# 内容
data modify storage neofunction:rubra fin merge value {win:300,vul:1b}
effect clear @s minecraft:resistance
effect give @s minecraft:resistance infinite 2 true
execute as @e[type=block_display,tag=rubra_void_shell] run data merge entity @s {view_range:0.0f}
particle minecraft:flash{color:[0.8,0.95,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
particle minecraft:end_rod ~ ~ ~ 6 6 6 0.3 300 force @a[distance=..128]
playsound minecraft:block.glass.break hostile @a[distance=..128] ~ ~ ~ 3 0.5
playsound minecraft:block.beacon.power_select hostile @a[distance=..128] ~ ~ ~ 3 1.2
title @a[distance=..128] actionbar {"text":"黒い膜が剥がれた！ 今のうちに射て！（15 秒）","color":"#7FD8FF","bold":true}
