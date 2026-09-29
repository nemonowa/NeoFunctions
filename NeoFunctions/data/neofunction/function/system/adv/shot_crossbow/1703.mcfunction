# 命名：1703
# 説明：shot_crossbow
# >adv
# =/function neofunction:system/adv/shot_crossbow/1703


# 内容スナイパーズマークを撃った時の処理

# 【変更：2026-09-27 26.3対応】矢の効果は矢エンティティの item（potion_contents）から読まれるようになったため
data merge entity @e[type=arrow,sort=nearest,limit=1] {item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:glowing",amplifier:90b,duration:100}]}}}}
tag @e[type=arrow,sort=nearest,limit=1] add snipersmark


