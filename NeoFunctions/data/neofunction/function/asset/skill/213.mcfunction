# 命名：213
# 説明：レゾナンス・リープ
# 説明：運命跳躍
# >
# =/function neofunction:asset/skill/213


# 内容
# 射程(16m)内に刻印済みの敵がいるかで分岐する

tag @s remove sigil_target_found
execute as @s if entity @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run tag @s add sigil_target_found

# ---- 刻印済みターゲットが射程内にいる場合：本来のレゾナンス・リープ（フルパワー） ----
# 半径8mを対象
execute as @s[tag=sigil_target_found] as @e[scores={LVL=0..29}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 10 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=30..49}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 20 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=50..69}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 40 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=70..89}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 80 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=90..}] as @e[distance=..8,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run damage @s 160 minecraft:generic by @p

execute as @s[tag=sigil_target_found] run effect give @s minecraft:resistance 1 4
execute as @s[tag=sigil_target_found] run tp @s @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=furthest]
execute as @s[tag=sigil_target_found] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=furthest] at @s run particle minecraft:end_rod ^0.00704525 ^-0.995 ^0.099626123 0 0 0 0.2 100 force @a
execute as @s[tag=sigil_target_found] as @e[scores={LVL=0..29}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 30 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=30..49}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 60 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=50..69}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 120 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=70..89}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 240 minecraft:generic by @p
execute as @s[tag=sigil_target_found] as @e[scores={LVL=90..}] as @e[distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1,sort=nearest] run damage @s 480 minecraft:generic by @p

# ---- 刻印済みターゲットが射程内にいない場合：最寄りの敵へ半分の威力でフォールバック（空振り＝事故防止） ----
execute as @s[tag=!sigil_target_found] run tp @s @e[tag=enemy,distance=..16,limit=1,sort=nearest]
execute as @s[tag=!sigil_target_found] as @e[scores={LVL=0..29}] as @e[tag=enemy,distance=..8] run damage @s 5 minecraft:generic by @p
execute as @s[tag=!sigil_target_found] as @e[scores={LVL=30..49}] as @e[tag=enemy,distance=..8] run damage @s 10 minecraft:generic by @p
execute as @s[tag=!sigil_target_found] as @e[scores={LVL=50..69}] as @e[tag=enemy,distance=..8] run damage @s 20 minecraft:generic by @p
execute as @s[tag=!sigil_target_found] as @e[scores={LVL=70..89}] as @e[tag=enemy,distance=..8] run damage @s 40 minecraft:generic by @p
execute as @s[tag=!sigil_target_found] as @e[scores={LVL=90..}] as @e[tag=enemy,distance=..8] run damage @s 80 minecraft:generic by @p

tag @s remove sigil_target_found

# 演出
playsound block.beacon.deactivate record @s ~ ~ ~ 1.0 1.2
playsound block.portal.ambient record @s ~ ~ ~ 0.1 2.0

# SP消費：20SP消費
scoreboard players remove @s SP 20

# クールタイム
# scoreboard players add @s CT 2
