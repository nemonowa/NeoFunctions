# 命名：frogdungeon
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:item_used_on_block/larusha
# =/function neofunction:system/adv/item_used_on_block/larusha

## 内容

execute in neodimension:ceresta_festa positioned 217 -15 1966 run function neofunction:asset/summon/769
execute in neodimension:ceresta_festa run fill 238 -19 1972 226 -11 1960 air

execute as @a[distance=..64] at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 1 1


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:item_used_on_block/larusha