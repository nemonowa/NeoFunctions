# 命名：pattern10_cross_rotate
# 説明：⑩十字回転雷 - ランダムな向きの十字型雷撃が出現し、少し回転した2フレーム目が遅れて追い打ちする
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern10_cross_rotate

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run random value 0..360
execute store result score %LTAngle temp run data get entity @e[tag=LTPivot,limit=1] Rotation[0] 1

# --- 1フレーム目：十字（半径10/20） ---
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:46}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:49}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:45}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:47}}

# --- 2フレーム目：25度回転した十字（半径10/20、着弾は遅め＝追い打ち） ---
scoreboard players add %LTAngle temp 25
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:76}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:77}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:76}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:75}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:76}}


# エリート強化：高速連撃フレーム（ガンガン！8tick間隔）
scoreboard players add %LTAngle temp 15
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:83}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:87}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:84}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:83}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:85}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:86}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:87}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:87}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:86}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}

scoreboard players add %LTAngle temp 12
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:93}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:93}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:91}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:92}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:94}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:95}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:91}}

scoreboard players add %LTAngle temp 90
execute store result entity @e[tag=LTPivot,limit=1] Rotation[0] float 1 run scoreboard players get %LTAngle temp
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^10 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:94}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^20 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:92}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^ ^ ^30 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:96}}

kill @e[tag=LTPivot]
