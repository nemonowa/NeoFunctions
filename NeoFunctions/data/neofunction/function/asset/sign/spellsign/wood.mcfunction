# 命名：wood
# 説明：木伐採
# >
# =/function neofunction:asset/sign/spellsign/wood

# 内容

## nexusに飛ばす空間が足りないので4回に分けて
clone ~-15 ~-1 ~-15 ~ ~31 ~ to neodimension:nexus 1290 10 1290 filtered #neofunction:signwood
execute in neodimension:nexus positioned 1290 10 1290 run fill ~ ~ ~ ~15 ~32 ~15 minecraft:air destroy

clone ~1 ~-1 ~-15 ~15 ~31 ~ to neodimension:nexus 1290 10 1290 filtered #neofunction:signwood
execute in neodimension:nexus positioned 1290 10 1290 run fill ~ ~ ~ ~15 ~32 ~15 minecraft:air destroy

clone ~-15 ~-1 ~1 ~ ~31 ~15 to neodimension:nexus 1290 10 1290 filtered #neofunction:signwood
execute in neodimension:nexus positioned 1290 10 1290 run fill ~ ~ ~ ~15 ~32 ~15 minecraft:air destroy

clone ~1 ~-1 ~1 ~15 ~31 ~15 to neodimension:nexus 1290 10 1290 filtered #neofunction:signwood
execute in neodimension:nexus positioned 1290 10 1290 run fill ~ ~ ~ ~15 ~32 ~15 minecraft:air destroy

## 木のパーティクルと音準備
fill ~-15 ~-1 ~-15 ~15 ~1 ~15 minecraft:wheat replace #neofunction:signwood
clone ~-15 ~-1 ~-15 ~15 ~30 ~15 ~-15 ~-1 ~-15 filtered minecraft:air force
execute positioned ~-16 ~-2 ~-16 run tag @e[type=item,dx=32,dy=34,dz=32,tag=] add logbreak

## itemをtp
execute in neodimension:nexus run tp @e[type=item,x=1289,y=9,z=1289,dx=16,dy=33,dz=16] @s

## 演出
particle minecraft:dust_plume ~ ~ ~ 1 2 1 1 100 normal

## 演出キャンセル
execute unless entity @e[tag=logbreak] run return run fill ~-15 ~-1 ~-15 ~15 ~31 ~15 air replace #neofunction:signwood

execute as @e[tag=logbreak] at @s positioned ~ ~1 ~ if block ~ ~ ~ #neofunction:signwood run setblock ~ ~ ~ air destroy
execute as @e[tag=logbreak] at @s positioned ~ ~1 ~ align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"minecraft:crit"},Radius:1f,Duration:2,Tags:["logbreak"]}
execute positioned ~-16 ~-2 ~-16 run kill @e[type=item,dx=32,dy=34,dz=32,tag=logbreak]
schedule function neofunction:asset/sign/spellsign/wood2 1t