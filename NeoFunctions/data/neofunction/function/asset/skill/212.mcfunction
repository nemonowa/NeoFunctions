# 命名：212
# 説明：レゾナンス・チェイン
# 説明：運命連鎖
# >
# =/function neofunction:asset/skill/212


# 連鎖できる起点がいなければ不発
execute unless entity @e[tag=enemy,distance=..8] run return 0

# 起点をタグ付け（以後はこのタグで追跡する）
execute as @e[tag=enemy,distance=..8,limit=1,sort=nearest] run tag @s add skill212Target

# 追跡用マーカーを起点の位置に設置
summon area_effect_cloud ~ ~ ~ {Tags:["skill212AEC","skill212AECNEW"],Passengers:[{id:"area_effect_cloud",Tags:["vanilla"]}],Duration:2147483647}
data modify entity @e[tag=skill212AECNEW,limit=1] Owner set from entity @s UUID
execute as @e[tag=skill212AECNEW] on passengers run data modify entity @s Owner set from entity @e[tag=skill212Target,limit=1,sort=nearest] UUID
tag @e[tag=skill212AECNEW] remove skill212AECNEW

# 起点への1発目ダメージ（既刻印からの起点なら1.5倍）
execute as @s[scores={LVL=10..29}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 5 minecraft:generic by @s
execute as @s[scores={LVL=30..49}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 10 minecraft:generic by @s
execute as @s[scores={LVL=50..69}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 20 minecraft:generic by @s
execute as @s[scores={LVL=70..89}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 40 minecraft:generic by @s
execute as @s[scores={LVL=90..}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 80 minecraft:generic by @s

execute as @s[scores={LVL=10..29}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 8 minecraft:generic by @s
execute as @s[scores={LVL=30..49}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 15 minecraft:generic by @s
execute as @s[scores={LVL=50..69}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 30 minecraft:generic by @s
execute as @s[scores={LVL=70..89}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 60 minecraft:generic by @s
execute as @s[scores={LVL=90..}] at @e[tag=skill212Target] if entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 120 minecraft:generic by @s

# 起点への1発目ダメージ（既刻印からの起点なら1.5倍）(敵がボッチならさらに2倍)
execute as @s[scores={LVL=10..29}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 10 minecraft:generic by @s
execute as @s[scores={LVL=30..49}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 20 minecraft:generic by @s
execute as @s[scores={LVL=50..69}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 40 minecraft:generic by @s
execute as @s[scores={LVL=70..89}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 80 minecraft:generic by @s
execute as @s[scores={LVL=90..}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt=!{active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 160 minecraft:generic by @s

execute as @s[scores={LVL=10..29}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 16 minecraft:generic by @s
execute as @s[scores={LVL=30..49}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 30 minecraft:generic by @s
execute as @s[scores={LVL=50..69}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 60 minecraft:generic by @s
execute as @s[scores={LVL=70..89}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 120 minecraft:generic by @s
execute as @s[scores={LVL=90..}] at @e[tag=skill212Target] unless entity @e[tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},distance=..8] run damage @e[tag=skill212Target,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=1] 240 minecraft:generic by @s

# 起点へ刻印付与
execute as @e[tag=skill212Target] run effect give @s minecraft:glowing 30 118 true
execute as @e[tag=skill212Target] run effect give @s minecraft:wither 30 0 true


# 1発目の「カンッ！」演出
#playsound minecraft:block.bell.use record @s ~ ~ ~ 1.0 1.1
execute at @e[tag=skill212Target] run particle minecraft:electric_spark ~ ~0.6 ~ 0.15 0.15 0.15 0.01 12 force


tag @e[tag=skill212Target] remove skill212Target

# SP消費：30SP消費
scoreboard players remove @s SP 30
