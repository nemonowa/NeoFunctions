# 命名：unset
# 説明：システム：ボス戦中の防具保護を除去する処理
# 説明：ボス戦中に防具の保護を解除する処理
# >/function neofunction:entity/.spawn/tag/boss
# =/function neofunction:player/armor/lock/unset


#対象のNBTがある場合、置き換える。
execute if entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.head neofunction:armor_lock/unset
execute if entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.chest neofunction:armor_lock/unset
execute if entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.legs neofunction:armor_lock/unset
execute if entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:unbreakable":{}}}}}] run item modify entity @s armor.feet neofunction:armor_lock/unset
