# 命名：pattern2_point
# 説明：ランダム方向・ランダム距離(6/12/18/24/30から抽選)に1点だけ落雷を生成するヘルパー関数。距離が遠いほど着弾が遅れ、波紋のように広がって見える
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_scatter
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_point

say 3
summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360
execute store result score %LTRadiusRoll temp run random value 0..4

execute as @e[tag=LTPivot,limit=1] at @s if score %LTRadiusRoll temp matches 0 positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s if score %LTRadiusRoll temp matches 1 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:53}}
execute as @e[tag=LTPivot,limit=1] at @s if score %LTRadiusRoll temp matches 2 positioned ^ ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}
execute as @e[tag=LTPivot,limit=1] at @s if score %LTRadiusRoll temp matches 3 positioned ^ ^ ^24 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:69}}
execute as @e[tag=LTPivot,limit=1] at @s if score %LTRadiusRoll temp matches 4 positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:77}}

kill @e[tag=LTPivot]
