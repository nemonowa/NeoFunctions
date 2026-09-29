# 命名：sansa2
# 説明：三叉弓追尾
# 説明：tag=sansa
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/sansa2


#内容

# 矢のステータスを受け継ぐ
execute store result entity @s damage double 1 run data get entity @e[tag=sansa,limit=1] damage 1
execute store result entity @s Fire short 1 run data get entity @e[tag=sansa,limit=1] Fire 1
execute store result entity @s Owner[0] int 1 run data get entity @e[tag=sansa,limit=1] Owner[0] 1
execute store result entity @s Owner[1] int 1 run data get entity @e[tag=sansa,limit=1] Owner[1] 1
execute store result entity @s Owner[2] int 1 run data get entity @e[tag=sansa,limit=1] Owner[2] 1
execute store result entity @s Owner[3] int 1 run data get entity @e[tag=sansa,limit=1] Owner[3] 1
tag @s add sansa2

##execute unless score homingX temp matches -2147483647..2147483647 run return 0

# 敵の位置
execute store result score homingX temp run data get entity @e[tag=sansaHoming,sort=nearest,limit=1] Pos[0]
execute store result score homingY temp run data get entity @e[tag=sansaHoming,sort=nearest,limit=1] Pos[1]
execute store result score homingZ temp run data get entity @e[tag=sansaHoming,sort=nearest,limit=1] Pos[2]
scoreboard players add homingY temp 1

# 矢の位置
execute store result score centerX temp run data get entity @s Pos[0]
execute store result score centerY temp run data get entity @s Pos[1]
execute store result score centerZ temp run data get entity @s Pos[2]

scoreboard players operation homingX temp -= centerX temp
scoreboard players operation homingY temp -= centerY temp
scoreboard players operation homingZ temp -= centerZ temp

# 方向ベクトルの代入
execute store result entity @s Motion[0] double 0.2 run scoreboard players get homingX temp
execute store result entity @s Motion[1] double 0.2 run scoreboard players get homingY temp
execute store result entity @s Motion[2] double 0.2 run scoreboard players get homingZ temp

scoreboard players reset homingX temp
scoreboard players reset homingY temp
scoreboard players reset homingZ temp
scoreboard players reset centerX temp
scoreboard players reset centerY temp
scoreboard players reset centerZ temp