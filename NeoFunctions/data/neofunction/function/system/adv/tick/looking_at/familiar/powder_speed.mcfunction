# 命名：powder_speed
# 説明：ウィンドパウダー(CMD:1105)。対象に永続の移動速度+落下耐性(slow_falling)を付与する。
#       対象は3m以内の全familiar(複数可)。全員に付与済み(誰か1人でも未付与ならスキップしない)の場合のみ何もせず終了。
# =/function neofunction:system/adv/tick/looking_at/familiar/powder_speed

execute as @e[tag=looked] at @s run tag @e[tag=familiar,distance=..3] add lookedGroup

execute unless entity @e[tag=lookedGroup,tag=!familiarSpeed] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:speed","minecraft:slow_falling"]
tag @e[tag=lookedGroup] add familiarSpeed
tag @e[tag=lookedGroup] add soul3
function neofunction:system/adv/tick/looking_at/familiar/powder_apply
