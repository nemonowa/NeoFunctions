# 命名：soltheal
# 説明：soltheal防具で殴られた時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/entity_hurt_player/soltheal



## 内容
effect give @s minecraft:regeneration 5 1
particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
playsound block.water.ambient record @s ~ ~ ~ 0.4 1.0
