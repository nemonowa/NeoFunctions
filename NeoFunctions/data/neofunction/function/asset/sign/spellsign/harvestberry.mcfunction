# 命名：harvestberry
# 説明：ベリー収穫数に応じてlootをループ処理
# >
# =/function neofunction:asset/sign/spellsign/harvestberry


# 内容

# 説明
execute unless entity @s[tag=spellharvestinfo,predicate=!neofunction:is_sneaking] run return run function neofunction:asset/sign/spellsign/base/harvestinfo

# 骨粉処理
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add bonemeal
execute if entity @s[tag=bonemeal] run clear @s minecraft:bone_meal 1
execute if entity @s[tag=bonemeal] at @s run place feature neofunction:spellsignharvest/berry
execute if entity @s[tag=bonemeal] at @s run particle minecraft:composter ~ ~1 ~ 3 0.7 3 0 100 normal
execute if entity @s[tag=bonemeal] run return run tag @s remove bonemeal


execute store result score harvest temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 minecraft:sweet_berry_bush[age=1] replace minecraft:sweet_berry_bush[age=3]

##nexusに呼び出し
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:sweet_berry_bush[age=3]

##harvestsumを返す
function neofunction:asset/sign/spellsign/base/harvestloop2

# 同じの2回やってもばれへんか
execute store result score harvest temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 minecraft:sweet_berry_bush[age=1] replace minecraft:sweet_berry_bush[age=2]

##nexusに呼び出し
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:sweet_berry_bush[age=2]

##harvestsumを返す
function neofunction:asset/sign/spellsign/base/harvestloop2

##与える
execute in neodimension:nexus positioned 1290 8 1290 run tp @e[distance=0,type=item] @s

#消す
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:air

#演出
particle minecraft:dust_plume ~ ~ ~ 1 2 1 1 100 normal
playsound minecraft:block.crop.break block @a[distance=..16] ~ ~ ~ 1 0.5