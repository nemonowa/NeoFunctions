# 命名：1703
# 説明：shot_crossbow
# >adv
# =/function neofunction:system/adv/shot_crossbow/1703


# 内容スナイパーズマークを撃った時の処理

data merge entity @e[type=arrow,sort=nearest,limit=1] {item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:glowing",amplifier:90b,duration:100}]}}}}
tag @e[type=arrow,sort=nearest,limit=1] add snipersmark


