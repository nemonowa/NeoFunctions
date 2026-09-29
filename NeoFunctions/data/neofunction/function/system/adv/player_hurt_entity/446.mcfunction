# 命名：446
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_hurt_entity/446


# 内容
item modify entity @s weapon.mainhand neofunction:set_damage/0

particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 2 30 force @s


playsound minecraft:item.shield.break master @s ~ ~ ~ 1 0.5 1

