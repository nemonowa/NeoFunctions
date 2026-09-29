# 命名：powder_fire
# 説明：フレイムパウダー(CMD:1062)。対象に永続の火炎耐性+攻撃力上昇を付与する。
#       付与済みならfamiliarFireResistanceタグが付いているので、それがあれば何もせず終了。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/powder_fire

execute if entity @e[tag=interacted,tag=familiarFireResistance] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:fire_resistance","minecraft:strength"]
tag @e[tag=interacted] add familiarFireResistance
function neofunction:system/adv/player_interacted_with_entity/familiar/powder_apply
