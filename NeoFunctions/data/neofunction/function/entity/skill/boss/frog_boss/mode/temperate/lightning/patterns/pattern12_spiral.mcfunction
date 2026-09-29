# 命名：pattern12_spiral
# 説明：⑫螺旋雷 - 中心から一定角度(50度)ずつ回転しながら外側へ伸びていく螺旋状の雷撃列
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern12_spiral

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1

execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:55}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^14 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:64}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:67}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:70}}

scoreboard players add %LTAngle temp 50
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:73}}

kill @e[tag=LTPivot]
