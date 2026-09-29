# 命名：powder_fire
# 説明：フレイムパウダー(CMD:1062)。対象に永続の火炎耐性+攻撃力上昇を付与する。
#       対象は3m以内の全familiar(複数可)。全員に付与済み(誰か1人でも未付与ならスキップしない)の場合のみ何もせず終了。
# =/function neofunction:system/adv/tick/looking_at/familiar/powder_fire

execute as @e[tag=looked] at @s run tag @e[tag=familiar,distance=..3] add lookedGroup

execute unless entity @e[tag=lookedGroup,tag=!familiarFireResistance] run return 0

data modify storage neofunction:temp familiar_powder.effects set value ["minecraft:fire_resistance","minecraft:strength"]
tag @e[tag=lookedGroup] add familiarFireResistance
tag @e[tag=lookedGroup] add soul1
function neofunction:system/adv/tick/looking_at/familiar/powder_apply
