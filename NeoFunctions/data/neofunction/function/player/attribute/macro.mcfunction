# 命名：macro
# 説明：プレイヤーのステータスを動的に変更する処理
# >/function neofunction:entity/attribute/load
# =/function neofunction:player/attribute/macro


## 内容
attribute @s minecraft:armor base set 0
attribute @s minecraft:armor_toughness base set 0
$attribute @s minecraft:attack_damage base set $(atk)
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:luck base set 0
$attribute @s minecraft:max_absorption base set $(def)
$attribute @s minecraft:max_health base set $(hp)
attribute @s minecraft:movement_speed base set 0.1

