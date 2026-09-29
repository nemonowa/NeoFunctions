# 命名：pattern2_spiral_implosion
# 説明：②螺旋収束灼滅 - 外周から中心へ1tickずつ時間差で渦を巻きながら収束し、中心到達と同時に8方向へ同時爆撃するフィニッシュ演出
# エリート強化（連撃）：収束→爆撃のセットを3連撃（+8tick刻み）で叩き込む
# >/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern2_spiral_implosion

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1
scoreboard players operation %LTAngleStart temp = %LTAngle temp

# ===== 連撃1発目：収束 =====

# --- step 1/14 (半径30.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:30}}

# --- step 2/14 (半径28.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:30}}

# --- step 3/14 (半径26.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^26.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:33}}

# --- step 4/14 (半径24.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

# --- step 5/14 (半径22.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:32}}

# --- step 6/14 (半径20.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:33}}

# --- step 7/14 (半径18.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 8/14 (半径16.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:35}}

# --- step 9/14 (半径14.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^14.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 10/14 (半径12.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 11/14 (半径10.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:38}}

# --- step 12/14 (半径8.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:43}}

# --- step 13/14 (半径6.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 14/14 (半径4.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# フィニッシュ：中心到達と同時に8方向へ同時爆撃（連撃1発目）
summon marker ~4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~0.0 ~ ~4.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~-2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~-4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~-2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~0.0 ~ ~-4.0 {Tags:["AttackPoint"],data:{Timer:46}}
summon marker ~2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:46}}

# エリート強化（連撃）：連撃2発目：収束（+8tick）
scoreboard players operation %LTAngle temp = %LTAngleStart temp

# --- step 1/14 (半径30.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:36}}

# --- step 2/14 (半径28.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

# --- step 3/14 (半径26.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^26.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 4/14 (半径24.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:39}}

# --- step 5/14 (半径22.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 6/14 (半径20.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:41}}

# --- step 7/14 (半径18.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

# --- step 8/14 (半径16.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

# --- step 9/14 (半径14.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^14.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:44}}

# --- step 10/14 (半径12.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 11/14 (半径10.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

# --- step 12/14 (半径8.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

# --- step 13/14 (半径6.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:53}}

# --- step 14/14 (半径4.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:54}}

# フィニッシュ：中心到達と同時に8方向へ同時爆撃（連撃2発目）
summon marker ~4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~0.0 ~ ~4.0 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~-2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~-4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~-2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~0.0 ~ ~-4.0 {Tags:["AttackPoint"],data:{Timer:54}}
summon marker ~2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:54}}

# エリート強化（連撃）：連撃3発目：収束（+16tick）
scoreboard players operation %LTAngle temp = %LTAngleStart temp

# --- step 1/14 (半径30.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

# --- step 2/14 (半径28.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^28.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

# --- step 3/14 (半径26.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^26.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}

# --- step 4/14 (半径24.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^24.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 5/14 (半径22.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^22.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 6/14 (半径20.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

# --- step 7/14 (半径18.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^18.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 8/14 (半径16.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^16.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}

# --- step 9/14 (半径14.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^14.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

# --- step 10/14 (半径12.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^12.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:54}}

# --- step 11/14 (半径10.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}

# --- step 12/14 (半径8.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^8.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}

# --- step 13/14 (半径6.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^6.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

# --- step 14/14 (半径4.0) ---
scoreboard players add %LTAngle temp 45
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^4.0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}

# フィニッシュ：中心到達と同時に8方向へ同時爆撃（連撃3発目）
summon marker ~4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~0.0 ~ ~4.0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-2.83 ~ ~2.83 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-4.0 ~ ~0.0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~-2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~0.0 ~ ~-4.0 {Tags:["AttackPoint"],data:{Timer:62}}
summon marker ~2.83 ~ ~-2.83 {Tags:["AttackPoint"],data:{Timer:62}}

kill @e[tag=LTPivot]
