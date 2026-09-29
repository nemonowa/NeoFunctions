# 命名：pattern11_x_rotate
# 説明：⑪X字回転雷 - 十字回転雷の強化版。X字型の雷撃が3フレームに渡って少しずつ回転しながら広がる
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern11_x_rotate

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1
scoreboard players add %LTAngle temp 45

# --- 1フレーム目：X字（半径8/16/24） ---
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

# --- 2フレーム目：18度回転（半径8/16/24、着弾やや遅め） ---
scoreboard players add %LTAngle temp 18
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

# --- 3フレーム目：さらに18度回転（半径8/16/24、着弾は一番遅い＝仕上げ） ---
scoreboard players add %LTAngle temp 18
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

kill @e[tag=LTPivot]
