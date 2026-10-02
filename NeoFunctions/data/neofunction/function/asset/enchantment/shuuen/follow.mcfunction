# 命名：follow
# 説明：矢を追う。爆心を矢の位置へ動かし、矢がまだ昇っているあいだ（最大 5 秒）は時間を進めない
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/follow


# 内容
execute as @e[type=#minecraft:arrows,tag=neo.nk_arrow] if score @s neo.nk_id = #nk_cur temp run tag @s add neo.nk_this
tp @s @e[tag=neo.nk_this,limit=1]
scoreboard players add #nk_h temp 1
scoreboard players set #nk_vy temp 0
execute store result score #nk_vy temp run data get entity @e[tag=neo.nk_this,limit=1] Motion[1] 100
execute at @e[tag=neo.nk_this,limit=1] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 3 force
execute if entity @e[tag=neo.nk_this] if score #nk_vy temp matches 1.. if score #nk_h temp matches ..100 run scoreboard players set #nk_t temp 0
tag @e[tag=neo.nk_this] remove neo.nk_this
