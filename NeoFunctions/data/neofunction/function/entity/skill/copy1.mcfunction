# 命名：copy1
# 説明：最寄りのプレイヤーの装備をコピーする敵
# 説明：最寄りのプレイヤーの装備をコピーする
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/copy1



#
item replace entity @s weapon.mainhand from entity @p weapon.mainhand

damage @s 9 minecraft:player_explosion