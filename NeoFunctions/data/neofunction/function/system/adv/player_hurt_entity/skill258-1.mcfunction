# 命名：skill258-1
# 説明：Assasinの影潜【シャドウ・ディセント】効果時間中に殴られたエンティティ
# >/function neofunction:player_hurt_entity/258-1
# =/function neofunction:system/adv/player_hurt_entity/skill258-1



## 内容
# 内容
execute as @e[tag=skill258-1,tag=hit,limit=1,sort=nearest] at @s run attribute @s minecraft:follow_range modifier remove neofunction:00000010-0010-0010-0010-000000000010
execute as @e[tag=skill258-1,tag=hit,limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 30 normal @a
# 効果音

execute as @a[tag=skill258] at @s run playsound minecraft:entity.villager.work_cartographer record @s ~ ~ ~ 0.6 1.3

tag @e[tag=skill258-1,tag=hit,limit=1,sort=nearest] remove skill258-1

