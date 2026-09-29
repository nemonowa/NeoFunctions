# 命名：powder_speed
# 説明：ウィンドパウダー(CMD:1105)。対象に永続の移動速度+落下耐性(slow_falling)を付与する。
#       付与済みならfamiliarSpeedタグが付いているので、それがあれば何もせず終了。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/powder_speed

execute if entity @e[tag=interacted,tag=familiarSpeed] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:speed","minecraft:slow_falling"]
tag @e[tag=interacted] add familiarSpeed
function neofunction:system/adv/player_interacted_with_entity/familiar/powder_apply
