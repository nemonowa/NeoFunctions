# 命名：pattern2_spiral_implosion
# 説明：②螺旋収束灼滅 - 外周から中心へ1tickずつ時間差で渦を巻きながら収束し、中心到達と同時に8方向へ同時爆撃するフィニッシュ演出
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_spiral_implosion

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1

# --- step 1/14 (半径30.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:30}}

# --- step 2/14 (半径28.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:31}}

# --- step 3/14 (半径26.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^26.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

# --- step 4/14 (半径24.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:33}}

# --- step 5/14 (半径22.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:34}}

# --- step 6/14 (半径20.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:35}}

# --- step 7/14 (半径18.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

# --- step 8/14 (半径16.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:37}}

# --- step 9/14 (半径14.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^14.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 10/14 (半径12.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

# --- step 11/14 (半径10.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

# --- step 12/14 (半径8.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 13/14 (半径6.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

# --- step 14/14 (半径4.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

kill @e[tag=LTPivot]

# フィニッシュ：中心到達と同時に8方向へ同時爆撃（半径4・Timer46で全弾同時着弾）
summon marker ~4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~0.0 ~ ~4.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~-2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~-4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~-2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~0.0 ~ ~-4.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:46}}
