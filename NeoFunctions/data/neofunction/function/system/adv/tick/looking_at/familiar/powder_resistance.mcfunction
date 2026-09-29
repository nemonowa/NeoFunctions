# 命名：powder_resistance
# 説明：アースパウダー(CMD:1063)。対象に永続の耐性+最大体力上昇を付与する。
#       対象は3m以内の全familiar(複数可)。全員に付与済み(誰か1人でも未付与ならスキップしない)の場合のみ何もせず終了。
# =/function neofunction:system/adv/tick/looking_at/familiar/powder_resistance

execute as @e[tag=looked] at @s run tag @e[tag=familiar,distance=..3] add lookedGroup

execute unless entity @e[tag=lookedGroup,tag=!familiarResistance] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:resistance","minecraft:health_boost"]
tag @e[tag=lookedGroup] add familiarResistance
tag @e[tag=lookedGroup] add soul4
function neofunction:system/adv/tick/looking_at/familiar/powder_apply
