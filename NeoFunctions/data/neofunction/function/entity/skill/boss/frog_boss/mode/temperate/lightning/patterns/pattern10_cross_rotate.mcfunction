# 命名：pattern10_cross_rotate
# 説明：⑩十字回転雷 - ランダムな向きの十字型雷撃が出現し、少し回転した2フレーム目が遅れて追い打ちする
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern10_cross_rotate

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1

# --- 1フレーム目：十字（半径10/20） ---
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

# --- 2フレーム目：25度回転した十字（半径10/20、着弾は遅め＝追い打ち） ---
scoreboard players add %LTAngle temp 25
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}

kill @e[tag=LTPivot]
