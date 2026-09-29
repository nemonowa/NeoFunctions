# 命名：pattern1_double_helix
# 説明：①双螺旋豪雷 - 中心から180度対をなす2本の螺旋腕が、1tickずつ時間差で外側へ回転しながら伸びていく。回転する刃のように見える高インパクト演出
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern1_double_helix

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1

# --- step 1/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:30}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:30}}

# --- step 2/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:31}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:31}}

# --- step 3/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

# --- step 4/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:33}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:33}}

# --- step 5/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:34}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:34}}

# --- step 6/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:35}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:35}}

# --- step 7/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

# --- step 8/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:37}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:37}}

# --- step 9/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 10/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

# --- step 11/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

# --- step 12/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 13/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

# --- step 14/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

# --- step 15/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

# --- step 16/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

# --- step 17/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

# --- step 18/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

kill @e[tag=LTPivot]
