# 命名：pattern7_fan
# 説明：⑦扇状（ワイドショット）- ランダムな方向へ扇状（-30~30度、各2点）に落雷
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern7_fan

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}

kill @e[tag=LTPivot]
