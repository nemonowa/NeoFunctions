# 命名：213
# 説明：レゾナンス・リープ
# 説明：運命跳躍
# >
# =/function neofunction:asset/skill/test


# 内容
# 半径8mを対象

execute as @e[scores={LVL=0..}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 10 minecraft:generic by @p
execute as @e[scores={LVL=30..}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 20 minecraft:generic by @p
execute as @e[scores={LVL=50..}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 40 minecraft:generic by @p
execute as @e[scores={LVL=70..}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 80 minecraft:generic by @p
execute as @e[scores={LVL=90..}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 160 minecraft:generic by @p

effect give @s minecraft:resistance 1 4
tp @s @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=furthest]
execute as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=furthest] at @s run particle minecraft:end_rod ^0.00704525 ^-0.995 ^0.099626123 0 0 0 0.2 100 force @a
execute as @e[scores={LVL=0..}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 30 minecraft:generic by @p
execute as @e[scores={LVL=30..}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 60 minecraft:generic by @p
execute as @e[scores={LVL=50..}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 120 minecraft:generic by @p
execute as @e[scores={LVL=70..}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 240 minecraft:generic by @p
execute as @e[scores={LVL=90..}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 480 minecraft:generic by @p


# 演出
playsound block.beacon.deactivate record @s ~ ~ ~ 1.0 1.2
playsound block.portal.ambient record @s ~ ~ ~ 0.1 2.0

# SP消費：10SP消費
scoreboard players remove @s SP 20

# クールタイム
# scoreboard players add @s CT 2

