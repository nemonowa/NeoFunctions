# 命名：明けの明星【ルシファー】
# 説明：天より輝く流星を九つ堕とす。爆発強度16。SP100消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/48



# 内容：範囲
tag @s add skill48
tp @s ~ ~ ~ ~ -60
effect give @s glowing 1 0
tellraw @a[distance=..64] [{"text":"<","bold":false,"italic":false},{"selector":"@s","color":"white"},{"text":"> "},{"text":"「"},{"text":"暁","color":"dark_red","bold":true},{"text":"よ.......」"}]

# 計画：
schedule function neofunction:asset/skill/48-1 20t append
schedule function neofunction:asset/skill/48-2 50t append
schedule function neofunction:asset/skill/48-3 99t append

# 演出
playsound minecraft:ambient.cave record @a[distance=..64] ~ ~ ~ 1 1.5 1
playsound minecraft:entity.wither.shoot record @a[distance=..64] ~ ~ ~ 0.3 0.5 0
summon area_effect_cloud ~ ~3 ~ {Radius:1f,Duration:5,custom_particle:{type:"minecraft:soul_fire_flame"}}
summon area_effect_cloud ~ ~7 ~ {Radius:3f,Duration:20,DurationOnUse:20f,custom_particle:{type:"minecraft:flame"}}
summon area_effect_cloud ~ ~11 ~ {Radius:5f,Duration:40,DurationOnUse:40f,custom_particle:{type:"minecraft:soul_fire_flame"}}
summon area_effect_cloud ~ ~17 ~ {Radius:7f,Duration:60,DurationOnUse:60f,custom_particle:{type:"minecraft:flame"}}
summon area_effect_cloud ~ ~25 ~ {Radius:9f,Duration:80,DurationOnUse:80f,custom_particle:{type:"minecraft:soul_fire_flame"}}




# 消費SP
scoreboard players remove @s SP 100