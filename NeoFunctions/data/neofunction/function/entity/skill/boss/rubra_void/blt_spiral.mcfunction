# 命名：blt_spiral
# 説明：渦の弾幕 1 回ぶん：回る向きの印を 13 度回し、3 方向（120 度ずつ）に撃つ
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/act
# =/function neofunction:entity/skill/boss/rubra_void/blt_spiral

# 内容
execute unless entity @e[type=marker,tag=rubra_blt_rot] run summon marker 921.5 200.8 3282.5 {Tags:["check","rubra_fin","rubra_blt_rot"]}
execute as @e[type=marker,tag=rubra_blt_rot,limit=1] at @s run tp @s ~ ~ ~ ~13 0
execute as @e[type=marker,tag=rubra_blt_rot,limit=1] at @s rotated ~ 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
execute as @e[type=marker,tag=rubra_blt_rot,limit=1] at @s rotated ~120 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
execute as @e[type=marker,tag=rubra_blt_rot,limit=1] at @s rotated ~240 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
