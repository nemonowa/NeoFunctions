# 命名：1
# 説明：エンティティ処理
# 実行条件：進捗達成時
# >(=neofunction:.skill/0)
# =/function neofunction:asset/skill/1


## 内容
tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s [{"text":"耐久力【HP】"},{"nbt":"Health","entity":"@s"}]
tellraw @s [{"text":"冀求力【SP】"},{"score":{"name":"@s","objective":"SPmax"}}]
tellraw @s [{"text":"攻撃力【ATK】"},{"nbt":"Attributes[{Name:\"minecraft:generic.attack_damage\"}].Base","entity":"@s"}]
tellraw @s [{"text":"防御力【DEF】"},{"nbt":"AbsorptionAmount","entity":"@s"}]
tellraw @s [{"text":"機動力【SPD】"},{"nbt":"Attributes[{Name:\"minecraft:generic.movement_speed\"}].Base","entity":"@s"}]
tellraw @s [{"text":"抵抗力【KBR】"},{"nbt":"Attributes[{Name:\"minecraft:generic.knockback_resistance\"}].Base","entity":"@s"}]

tellraw @s [{"text":"防具値【armor】"},{"nbt":"Attributes[{Name:\"minecraft:generic.armor\"}].Base","entity":"@s"}]
tellraw @s [{"text":"防具強度【armor_toughness】"},{"nbt":"Attributes[{Name:\"minecraft:generic.armor_toughness\"}].Base","entity":"@s"}]
tellraw @s [{"text":"採掘速度【mining_speed】"},{"score":{"name":"@s","objective":"MiningSpeed"},"color":"#FFE26E"}]

tellraw @s [{"text":"———————————————————————-+++"}]

# 固定値SP消費
scoreboard players remove @s SP 8
function neofunction:player/sp/.neo