# 命名：playerモーション操作
# 説明：@s player を自身の視線方向へvertex分動かす
# 説明：定番の爆風を利用
# >
# =/function neofunction:system/motion/player/lookingat2

# 内容：

$scoreboard players set #flagdiscri temp $(vertex)
execute unless score #flagdiscri temp matches 2..100 run tag @s add discri
scoreboard players reset #flagdiscri temp
execute if entity @s[tag=discri] run tellraw @s "2~100で指定してください。"
execute if entity @s[tag=discri] run return run tag @s remove discri

# 距離を取得
$execute in neodimension:nexus positioned 0.0 0.0 0.0 run summon marker ^ ^ ^$(vertex) {Tags:["vertex","del"]}
execute store result storage neofunction:motion dis.MotionX int 0.01 run data get entity @e[tag=vertex,limit=1] Pos[0] 10000
execute store result storage neofunction:motion dis.MotionY int 0.01 run data get entity @e[tag=vertex,limit=1] Pos[1] 10000
execute store result storage neofunction:motion dis.MotionZ int 0.01 run data get entity @e[tag=vertex,limit=1] Pos[2] 10000
function neofunction:system/motion/player/main with storage neofunction:motion dis
kill @e[tag=vertex,limit=1]