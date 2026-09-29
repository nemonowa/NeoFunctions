# 命名：pattern7_fan
# 説明：⑦扇状（ワイドショット）- ランダムな方向へ扇状（-30~30度、各2点）に落雷
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern7_fan

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:65}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:65}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:64}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:64}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:64}}

kill @e[tag=LTPivot]

# エリート強化（連撃）：連撃2発目（+8tick）
# 命名：pattern7_fan
# 説明：⑦扇状（ワイドショット）- ランダムな方向へ扇状（-30~30度、各2点）に落雷
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern7_fan

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:71}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:71}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:73}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:70}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:67}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:69}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:70}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:70}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:71}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:71}}

kill @e[tag=LTPivot]


# エリート強化（連撃）：連撃3発目（+16tick）
# 命名：pattern7_fan
# 説明：⑦扇状（ワイドショット）- ランダムな方向へ扇状（-30~30度、各2点）に落雷
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern7_fan

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:81}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:77}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:77}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}

kill @e[tag=LTPivot]


# エリート強化（連撃）：連撃4発目（+24tick）
# 命名：pattern7_fan
# 説明：⑦扇状（ワイドショット）- ランダムな方向へ扇状（-30~30度、各2点）に落雷
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern7_fan

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:84}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~-15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~0 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:86}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:87}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~15 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s rotated ~30 ~ positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}

kill @e[tag=LTPivot]


