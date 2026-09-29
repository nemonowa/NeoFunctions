# 命名：harvestpumpkin
# 説明：かぼちゃ収穫
# >
# =/function neofunction:asset/sign/spellsign/harvestpumpkin

# 内容

execute store result score harvest temp run fill ~-6 ~-1 ~-6 ~6 ~4 ~6 minecraft:air replace minecraft:pumpkin

##nexusに呼び出し
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:pumpkin

function neofunction:asset/sign/spellsign/base/harvestloop2

##与える
execute in neodimension:nexus positioned 1290 8 1290 run tp @e[distance=0,type=item] @s

#消す
execute in neodimension:nexus run setblock 1290 8 1290 minecraft:air

#演出
particle minecraft:dust_plume ~ ~ ~ 1 2 1 1 100 normal
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.8