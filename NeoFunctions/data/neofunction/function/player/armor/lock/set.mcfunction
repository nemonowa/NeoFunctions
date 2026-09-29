# 命名：set
# 説明：システム：防具を壊れなくする処理
# 説明：ボス戦中に防具の保護を付ける処理
# >/function neofunction:entity/.spawn/tag/boss
# =/function neofunction:player/armor/lock/set

tag @s add temparmor
execute unless entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.head neofunction:armor_lock/set
execute unless entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.chest neofunction:armor_lock/set
execute unless entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.legs neofunction:armor_lock/set
execute unless entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.feet neofunction:armor_lock/set
tag @s remove temparmor

