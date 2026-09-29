# 命名：マナ・ハート
# 説明：ソウルに回復の意思を乗せて瞬間的な自己活性を実現するスキル。トリガーすると、SPの20%を使用し、HPの20%を回復する。無意識器官、耀きの心臓。
# >
# =/function neofunction:asset/skill/6


# 緩衝体力（amp*2）
effect give @s[scores={LVL=0..}] minecraft:absorption 30 0
effect give @s[scores={LVL=20..}] minecraft:absorption 30 1
effect give @s[scores={LVL=30..}] minecraft:absorption 30 2
effect give @s[scores={LVL=40..}] minecraft:absorption 30 3
effect give @s[scores={LVL=50..}] minecraft:absorption 30 4
effect give @s[scores={LVL=60..}] minecraft:absorption 30 5
effect give @s[scores={LVL=70..}] minecraft:absorption 30 6
effect give @s[scores={LVL=80..}] minecraft:absorption 30 7
effect give @s[scores={LVL=90..}] minecraft:absorption 30 8

# function neofunction:system/heal/20
effect give @s[scores={LVL=0..}] regeneration 5 0
effect give @s[scores={LVL=10..}] regeneration 10 0
effect give @s[scores={LVL=20..}] regeneration 5 1
effect give @s[scores={LVL=30..}] regeneration 10 1
effect give @s[scores={LVL=40..}] regeneration 5 2
effect give @s[scores={LVL=50..}] regeneration 10 2
effect give @s[scores={LVL=60..}] regeneration 5 3
effect give @s[scores={LVL=70..}] regeneration 10 3
effect give @s[scores={LVL=80..}] regeneration 5 4
effect give @s[scores={LVL=90..}] regeneration 10 4

# 消費：最大SPの20%消費
scoreboard players operation @s SP -= @s SP20p

# 演出
particle minecraft:heart ~ ~1 ~ 1 1 1 1 10 force
playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 0.5 2 1
playsound minecraft:block.amethyst_block.chime record @s ~ ~ ~ 10 2 1




