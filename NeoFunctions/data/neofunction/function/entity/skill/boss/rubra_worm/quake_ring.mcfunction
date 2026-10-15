# 命名：quake_ring
# 説明：地響きの輪 1 つ（半径 r）：16 方向に砂の粒。半径 ri〜ro の地面に立っている人に quake_hurt
# 実行条件：実行位置 地響きの目印。引数 r ri ro（storage neofunction:rubra worm_m）
# >/function neofunction:entity/skill/boss/rubra_worm/quake_tick
# =/function neofunction:entity/skill/boss/rubra_worm/quake_ring

# 内容
$execute rotated 0 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 22 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 45 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 67 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 90 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 112 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 135 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 157 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 180 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 202 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 225 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 247 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 270 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 292 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 315 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute rotated 337 0 positioned ^ ^0.2 ^$(r) run particle minecraft:block{block_state:"minecraft:red_sand"} ~ ~ ~ 0.3 0.1 0.3 0 3 normal
$execute as @a[distance=..$(ro),gamemode=!spectator,tag=!rubra_wqhit,predicate=neofunction:rubra/on_ground] unless entity @s[distance=..$(ri)] run function neofunction:entity/skill/boss/rubra_worm/quake_hurt
