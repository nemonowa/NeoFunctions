# 命名：フロッグボルト
# 説明：
# 説明：
# >/function neofunction:entity/1_detection
# =/function neofunction:asset/skill/68

execute unless entity @e[tag=enemy,distance=..8] run return run title @s actionbar {"text":"告：発動失敗。対象がいない！","color":"red","bold":true}

tag @s add This
execute if predicate neofunction:is_in_water run tag @e[tag=enemy,distance=..8] add skill68
execute unless entity @s[predicate=!neofunction:weather_check/rainy,predicate=!neofunction:weather_check/thunder] store result score #Calc1 temp if blocks ~ ~ ~ ~ 255 ~ ~ ~ ~ masked
execute unless entity @s[predicate=!neofunction:weather_check/rainy,predicate=!neofunction:weather_check/thunder] if score #Calc1 temp matches 0 run tag @e[tag=enemy,distance=..8] add skill68
tag @e[tag=enemy,limit=1,sort=nearest,distance=..8] add skill68
execute as @e[tag=skill68] run damage @s 30 lightning_bolt by @a[tag=This,limit=1]

execute at @e[tag=skill68] run particle electric_spark ~ ~ ~ 0 3 0 0 100

tag @e[tag=skill68] remove skill68
tag @s remove This

playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 1 2


scoreboard players remove @s SP 30