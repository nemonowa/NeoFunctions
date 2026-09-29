# 命名：powder_regen
# 説明：ウォーターパウダー(CMD:1106)。対象に永続の再生+イルカの好意を付与する。
#       対象は3m以内の全familiar(複数可)。全員に付与済み(誰か1人でも未付与ならスキップしない)の場合のみ何もせず終了。
# =/function neofunction:system/adv/tick/looking_at/familiar/powder_regen

execute as @e[tag=looked] at @s run tag @e[tag=familiar,distance=..3] add lookedGroup

execute unless entity @e[tag=lookedGroup,tag=!familiarRegen] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:regeneration","minecraft:dolphins_grace"]
tag @e[tag=lookedGroup] add familiarRegen
tag @e[tag=lookedGroup] add soul2
function neofunction:system/adv/tick/looking_at/familiar/powder_apply
