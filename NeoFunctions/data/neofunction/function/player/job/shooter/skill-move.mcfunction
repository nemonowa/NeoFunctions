# 命名：風蹴
# 説明：
# >/function neofunction:player/job/shooter/
# =/function neofunction:player/job/shooter/skill-move


# 効果開始
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
playsound minecraft:entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 0.5 0

# 予約
ride @s mount @e[type=arrow,limit=1,sort=nearest]









