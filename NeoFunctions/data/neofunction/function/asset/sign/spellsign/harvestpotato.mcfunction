# 命名：harvestpotato
# 説明：ポテト収穫
# >
# =/function neofunction:asset/sign/spellsign/harvestpotato


# 内容

execute store result score harvest temp run fill ~-4 ~-1 ~-4 ~4 ~1 ~4 minecraft:potatoes[age=0] replace minecraft:potatoes[age=7]

##nexusに呼び出し
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:potatoes[age=7]

##設定
data modify storage neofunction:harvest id set value "minecraft:potato"

##harvestsumを返す
function neofunction:asset/sign/spellsign/base/harvestloop with storage neofunction:harvest

##与える
#execute store result storage neofunction:harvest count int 1 run scoreboard players get harvestsum temp
#function neofunction:asset/sign/spellsign/base/harvestgive with storage neofunction:harvest
execute in neodimension:nexus positioned 1290 8 1290 run tp @e[distance=0,type=item] @s

#消す
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:air
#scoreboard players reset harvestsum temp

#演出
particle minecraft:dust_plume ~ ~ ~ 1 2 1 1 100 normal
playsound minecraft:block.crop.break block @a[distance=..16] ~ ~ ~ 1 0.5