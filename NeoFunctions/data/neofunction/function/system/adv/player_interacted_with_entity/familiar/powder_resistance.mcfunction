# 命名：powder_resistance
# 説明：アースパウダー(CMD:1063)。対象に永続の耐性+最大体力上昇を付与する。
#       付与済みならfamiliarResistanceタグが付いているので、それがあれば何もせず終了。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/powder_resistance

execute if entity @e[tag=interacted,tag=familiarResistance] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:resistance","minecraft:health_boost"]
tag @e[tag=interacted] add familiarResistance
function neofunction:system/adv/player_interacted_with_entity/familiar/powder_apply
