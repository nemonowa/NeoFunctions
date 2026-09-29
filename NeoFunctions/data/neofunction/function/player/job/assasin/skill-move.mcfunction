# 命名：風蹴
# 説明：忍者ならとべます。
# 実行条件：暗殺士官【ASSASIN】
# >/function neofunction:player/job/assasin/
# =/function neofunction:player/job/assasin/skill-move


# 効果開始
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
playsound minecraft:entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 1 0.5 0

# 予約
tag @s add assasin-move
schedule function neofunction:player/job/assasin/skill-move-remove 15s append
scoreboard players set @s CT 15

# ループ：忍者かつ特定の浮遊ならループ
function neofunction:player/job/assasin/skill-move-loop








