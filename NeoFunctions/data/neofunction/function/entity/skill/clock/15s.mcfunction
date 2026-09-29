# 命名：10s
# 説明：指定tagを持つエンティティを1秒毎に対象
# 説明：条件: 15s
# >/function neofunction:system/clock/15_second.mcfunction
# =/function neofunction:entity/skill/clock/15s

#将来的にはパッシブに統合する馬のやつ、プレイヤーが乗っていない飼いならし済みの馬は移動しない。
execute as @e[type=horse,nbt={Tame:1b}] unless predicate neofunction:is_ridden_by_player run effect give @s minecraft:slowness 15 10 true
execute as @e[type=horse,nbt={Tame:1b}] unless entity @s[nbt={Passengers:[{}]}] run effect give @s minecraft:glowing 15 10 true

