# 命名：かえるげーむ
# 説明：
# 説明：
# 説明：
# >/function neofunction:system/adv/tick/quest/tag/101
# =/function neofunction:asset/event/froggame/readyup


# 内容
execute in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run kill @e[tag=enemy,distance=..32]
execute in neodimension:ceresta_festa positioned 1012.35 44.51 2157.00 run summon area_effect_cloud ~ ~ ~ {Tags:["froggameAEC"],Duration:120}
effect give @s minecraft:glowing 300 101
execute in neodimension:ceresta_festa run tp @s 1013.54 44.00 2157.16 90.0 0
schedule function neofunction:asset/event/froggame/ready5s 1s
schedule function neofunction:asset/event/froggame/ready4s 2s
schedule function neofunction:asset/event/froggame/ready3s 3s
schedule function neofunction:asset/event/froggame/ready2s 4s
schedule function neofunction:asset/event/froggame/ready1s 5s
schedule function neofunction:asset/event/froggame/start 6s