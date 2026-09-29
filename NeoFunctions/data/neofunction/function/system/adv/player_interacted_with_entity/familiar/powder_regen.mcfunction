# 命名：powder_regen
# 説明：ウォーターパウダー(CMD:1106)。対象に永続の再生+イルカの好意を付与する。
#       付与済みならfamiliarRegenタグが付いているので、それがあれば何もせず終了。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/powder_regen

execute if entity @e[tag=interacted,tag=familiarRegen] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:regeneration","minecraft:dolphins_grace"]
tag @e[tag=interacted] add familiarRegen
function neofunction:system/adv/player_interacted_with_entity/familiar/powder_apply
