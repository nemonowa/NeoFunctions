# 命名：minecartgui
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_interacted_with_entity/minecartgui
# =/function neofunction:system/adv/player_interacted_with_entity/minecartgui

## 内容
execute if entity @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=fsanvil,distance=..8] run tag @s add FSanvil
tag @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=fsanvil,distance=..8] remove short
tag @e[type=minecraft:chest_minecart,sort=nearest,limit=1,tag=fsanvil,distance=..8] remove nopay



## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_interacted_with_entity/minecartgui