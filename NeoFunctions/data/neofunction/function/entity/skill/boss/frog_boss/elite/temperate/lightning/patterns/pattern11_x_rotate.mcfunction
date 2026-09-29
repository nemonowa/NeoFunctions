# 命名：pattern11_x_rotate
# 説明：⑪X字回転雷 - 十字回転雷の強化版。X字型の雷撃が3フレームに渡って少しずつ回転しながら広がる
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern11_x_rotate

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1
scoreboard players add %LTAngle temp 45

# --- 1フレーム目：X字（半径8/16/24） ---
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

# --- 2フレーム目：18度回転（半径8/16/24、着弾やや遅め） ---
scoreboard players add %LTAngle temp 18
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:66}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:66}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:64}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:65}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}

# --- 3フレーム目：さらに18度回転（半径8/16/24、着弾は一番遅い＝仕上げ） ---
scoreboard players add %LTAngle temp 18
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:84}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:84}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:82}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:83}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}


# エリート強化：高速連撃フレーム（ガンガン！8tick間隔）
scoreboard players add %LTAngle temp 12
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:91}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:86}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:90}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:86}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:91}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:90}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:87}}

scoreboard players add %LTAngle temp 10
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:96}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:94}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:95}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:96}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:96}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:98}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:98}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:99}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:98}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:95}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^32 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:96}}

kill @e[tag=LTPivot]
