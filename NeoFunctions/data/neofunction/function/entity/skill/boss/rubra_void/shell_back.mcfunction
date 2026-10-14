# 命名：shell_back
# 説明：【追加：2026-10-09 ルブラ編】膜が戻る：柱が消え、黒い膜がまた渦を包む
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/form1
# =/function neofunction:entity/skill/boss/rubra_void/shell_back

# 内容
function neofunction:entity/skill/boss/rubra_void/pillars_off
data modify storage neofunction:rubra fin.vul set value 0b
effect clear @s minecraft:resistance
execute as @e[type=block_display,tag=rubra_void_shell] run data merge entity @s {view_range:6.0f}
particle minecraft:squid_ink ~ ~ ~ 6 6 6 0.05 200 force @a[distance=..128]
playsound minecraft:block.sculk.spread hostile @a[distance=..128] ~ ~ ~ 3 0.5
tellraw @a[distance=..128] {"text":"柱の灯が消え、黒い膜がまた渦を包んだ。","color":"#6E7390","italic":true}
