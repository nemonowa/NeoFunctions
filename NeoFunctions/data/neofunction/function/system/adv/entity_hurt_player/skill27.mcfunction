# 命名：skill27
# 説明：
# >/function neofunction:asset/skill/25
# =/function neofunction:system/adv/entity_hurt_player/skill27



scoreboard players add @s heal 32

playsound entity.player.levelup master @s ~ ~ ~ 1 1.88 0
particle heart ~ ~1 ~ 0.5 0.5 0.5 0 5 force

scoreboard players remove @s SP 10