# 命名：pattern1_double_helix
# 説明：①双螺旋豪雷 - 中心から180度対をなす2本の螺旋腕が、1tickずつ時間差で外側へ回転しながら伸びていく。回転する刃のように見える高インパクト演出
# エリート強化（連撃）：同じ螺旋を4連撃（+8tick刻み）で叩き込む
# >/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern1_double_helix

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1
scoreboard players operation %LTAngleStart temp = %LTAngle temp

# ===== 連撃1発目 =====

# --- step 1/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:33}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:28}}

# --- step 2/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:29}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:34}}

# --- step 3/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:31}}

# --- step 4/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

# --- step 5/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:37}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

# --- step 6/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 7/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:34}}

# --- step 8/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 9/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

# --- step 10/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:37}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 11/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

# --- step 12/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

# --- step 13/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 14/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

# --- step 15/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

# --- step 16/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

# --- step 17/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

# --- step 18/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

# エリート強化（連撃）：連撃2発目（+8tick）
scoreboard players operation %LTAngle temp = %LTAngleStart temp

# --- step 1/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:37}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 2/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

# --- step 3/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

# --- step 4/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 5/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

# --- step 6/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 7/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

# --- step 8/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

# --- step 9/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 10/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 11/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 12/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 13/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:53}}

# --- step 14/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:53}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 15/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:54}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 16/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 17/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

# --- step 18/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:54}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:55}}

# エリート強化（連撃）：連撃3発目（+16tick）
scoreboard players operation %LTAngle temp = %LTAngleStart temp

# --- step 1/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

# --- step 2/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

# --- step 3/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 4/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 5/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}

# --- step 6/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}

# --- step 7/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:55}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}

# --- step 8/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

# --- step 9/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}

# --- step 10/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}

# --- step 11/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:55}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}

# --- step 12/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

# --- step 13/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}

# --- step 14/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}

# --- step 15/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}

# --- step 16/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

# --- step 17/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:65}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

# --- step 18/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

# エリート強化（連撃）：連撃4発目（+24tick）
scoreboard players operation %LTAngle temp = %LTAngleStart temp

# --- step 1/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^3.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:54}}

# --- step 2/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:55}}

# --- step 3/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:54}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:55}}

# --- step 4/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^7.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

# --- step 5/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^9.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

# --- step 6/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

# --- step 7/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}

# --- step 8/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^13.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

# --- step 9/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^15.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}

# --- step 10/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:66}}

# --- step 11/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:66}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:66}}

# --- step 12/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:65}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^19.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

# --- step 13/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^21.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:67}}

# --- step 14/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:69}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

# --- step 15/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:67}}

# --- step 16/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^25.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:71}}

# --- step 17/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:71}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^27.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

# --- step 18/18 ---
scoreboard players add %LTAngle temp 40
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:69}}

scoreboard players operation %LTAngleB temp = %LTAngle temp
scoreboard players add %LTAngleB temp 180
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngleB temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.5 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:69}}

kill @e[tag=LTPivot]
