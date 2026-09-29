# 命名：水遁の術
# 説明：発動時、自身に30sの水中呼吸を付与する（SP10消費）
# >/function neofunction:asset/skill/256
# =/function neofunction:player/job/assasin/skill-buff


# 
effect give @s minecraft:water_breathing 90 0
# particle effect ~ ~1 ~ 0.5 0.5 0.5 0 30 force
# playsound minecraft:entity.wolf.pant master @a[distance=..16] ~ ~ ~ 1 0.5 0


# 消費SP
scoreboard players remove @s SP 10


# 演出
tag @s add assasin-buff
schedule function neofunction:player/job/assasin/skill-buff-1 1t append
schedule function neofunction:player/job/assasin/skill-buff-2 5t append
schedule function neofunction:player/job/assasin/skill-buff-3 10t append
schedule function neofunction:player/job/assasin/skill-buff-4 15t append
schedule function neofunction:player/job/assasin/skill-buff-5 20t append
schedule function neofunction:player/job/assasin/skill-buff-end 21t append




