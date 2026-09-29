# 命名：copy
# 説明：最寄りのプレイヤーの装備をコピーする敵
# 説明：最寄りのプレイヤーの装備をコピーする
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/copy



#
item replace entity @s weapon.mainhand from entity @p weapon.mainhand
item replace entity @s weapon.offhand from entity @p weapon.offhand

item replace entity @s armor.head from entity @p armor.head
item replace entity @s armor.chest from entity @p armor.chest
item replace entity @s armor.legs from entity @p armor.legs
item replace entity @s armor.feet from entity @p armor.feet

data merge entity @s {drop_chances:{mainhand:-327.67F,offhand:-327.67F,feet:-327.67F,legs:-327.67F,chest:-327.67F,head:-327.67F}}

tag @s remove copy