# 命名：215
# 説明：レゾナンス・メロディ／運命旋律
# 説明：即時回復は廃止。代わりに再生の効果時間が刻印持ちの数に応じて延長、金ハート（アブソープション）を付与
# =/function neofunction:asset/skill/215

# 半径16m以内の刻印持ちの数をカウント（最大3体）
scoreboard players set #count215 temp 0
execute as @e[distance=..16,tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=3] run scoreboard players add #count215 temp 1

# 再生付与：基礎5秒（刻印持ちがいなくても保証）／1〜3体で12秒／4〜6体で20秒。強さはLVLに応じて上昇
execute if score @s LVL matches ..29 if score #count215 temp matches 0 run effect give @s minecraft:regeneration 5 0 true
execute if score @s LVL matches ..29 if score #count215 temp matches 1..3 run effect give @s minecraft:regeneration 12 0 true

execute if score @s LVL matches 30..49 if score #count215 temp matches 0 run effect give @s minecraft:regeneration 5 1 true
execute if score @s LVL matches 30..49 if score #count215 temp matches 1..3 run effect give @s minecraft:regeneration 12 1 true

execute if score @s LVL matches 50..69 if score #count215 temp matches 0 run effect give @s minecraft:regeneration 5 2 true
execute if score @s LVL matches 50..69 if score #count215 temp matches 1..3 run effect give @s minecraft:regeneration 12 2 true

execute if score @s LVL matches 70..89 if score #count215 temp matches 0 run effect give @s minecraft:regeneration 5 3 true
execute if score @s LVL matches 70..89 if score #count215 temp matches 1..3 run effect give @s minecraft:regeneration 12 3 true

execute if score @s LVL matches 90.. if score #count215 temp matches 0 run effect give @s minecraft:regeneration 5 6 true
execute if score @s LVL matches 90.. if score #count215 temp matches 1..3 run effect give @s minecraft:regeneration 12 4 true

# 金ハート（10秒持続、刻印持ちの数に応じて段階的に強化）
execute if score #count215 temp matches 1 run effect give @s minecraft:absorption 10 0 true
execute if score #count215 temp matches 2 run effect give @s minecraft:absorption 10 1 true
execute if score #count215 temp matches 3.. run effect give @s minecraft:absorption 10 2 true

# 演出
playsound block.beacon.deactivate record @s ~ ~ ~ 1.0 1.2
particle minecraft:heart ~ ~ ~ 0.2 1 0.2 0.1 10 force

# SP消費：20SP消費
scoreboard players remove @s SP 20