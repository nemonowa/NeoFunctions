# 命名：skill26
# 説明：
# >/function neofunction:asset/skill/25
# =/function neofunction:system/adv/entity_hurt_player/skill26



scoreboard players add @s heal 16

playsound entity.player.levelup master @s ~ ~ ~ 1 1.88 0
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 5 force

scoreboard players remove @s SP 10