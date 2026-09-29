# 命名：copy2
# 説明：最寄りのプレイヤーの装備をコピーする敵
# 説明：最寄りのプレイヤーの装備をコピーする
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/copy2



#
item replace entity @s weapon.offhand from entity @p weapon.offhand

damage @s 9 minecraft:player_explosion