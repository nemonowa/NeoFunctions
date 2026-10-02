# 命名：follow
# 説明：矢を追う。爆心を矢の位置へ動かし、矢がまだ昇っているあいだ（最大 5 秒）は時間を進めない
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/follow


# 内容
execute as @e[type=#minecraft:arrows,tag=neo.nk_arrow] if score @s neo.nk_id = #cur neo.nk_id run tag @s add neo.nk_this
tp @s @e[tag=neo.nk_this,limit=1]
scoreboard players add @s neo.nk_h 1
scoreboard players set #vy neo.nk_tmp 0
execute store result score #vy neo.nk_tmp run data get entity @e[tag=neo.nk_this,limit=1] Motion[1] 100
execute at @e[tag=neo.nk_this,limit=1] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 3 force
execute if entity @e[tag=neo.nk_this] if score #vy neo.nk_tmp matches 1.. if score @s neo.nk_h matches ..100 run scoreboard players set @s neo.nk_t 0
tag @e[tag=neo.nk_this] remove neo.nk_this
