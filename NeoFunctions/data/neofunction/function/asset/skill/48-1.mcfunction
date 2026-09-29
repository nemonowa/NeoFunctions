# 命名：明けの明星【ルシファー】
# 説明：天より九つの裁きの流星を堕とす。SP100消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/48-1



# 内容：範囲（左右下に5m,下方向に15m）
execute as @a[tag=skill48] at @s run playsound minecraft:entity.wither.shoot record @a[distance=..64] ~ ~ ~ 0.3 0.7 0

execute as @a[tag=skill48] at @s run summon fireball ~ ~25 ~ {NoGravity:1b,Glowing:1b,ExplosionPower:16b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:lava"},Radius:4f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~8 ~22 ~ {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~-8 ~22 ~ {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~ ~22 ~8 {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~ ~22 ~-8 {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~5.5 ~22 ~5.5 {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~5.5 ~22 ~-5.5 {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~-5.5 ~22 ~-5.5 {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

execute as @a[tag=skill48] at @s run summon fireball ~-5.5 ~22 ~5.5 {NoGravity:1b,Glowing:1b,ExplosionPower:9b,Tags:["skill48f"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:flame"},Radius:2f,Duration:99}],Item:{id:"minecraft:magma_block",count:1,components:{"minecraft:enchantments":{"minecraft:power":1}}}}

