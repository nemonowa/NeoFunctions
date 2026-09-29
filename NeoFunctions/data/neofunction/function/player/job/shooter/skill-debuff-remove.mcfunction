# 命名：変わり身の術
# 説明：
# >/function neofunction:player/job/shooter/skill-debuff
# =/function neofunction:player/job/shooter/skill-debuff-remove


# 内容
execute as @e[tag=shooter-debuff] at @s run attribute @s minecraft:follow_range modifier remove neofunction:00000010-0010-0010-0010-000000000010
execute as @e[tag=shooter-debuff] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 30 normal @a[distance=..16]

# 効果音
execute as @a[tag=shooter-debuff] at @s run playsound minecraft:entity.villager.work_cartographer record @a[distance=..16] ~ ~ ~ 0.6 1.3

tag @e[tag=shooter-debuff] remove shooter-debuff
