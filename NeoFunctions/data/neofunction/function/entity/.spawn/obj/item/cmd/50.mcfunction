# 命名：50
# 説明：右上アイテムを投げ捨てたとき（必然的にない場合も反応する）
# 説明：実行起点がアイテム
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/obj/item/cmd/50


# 内容
execute as @s on origin run function neofunction:asset/tellraw/menu
kill @s

#### カスタムインベントリ ####
# execute as @s on origin run execute if entity @a[tag=csgui] run return run tellraw @s [{"text":"今は開けない。"}]
# execute as @s on origin run execute unless entity @a[tag=csgui] run tag @s add csgui
# execute as @s on origin at @s[tag=csgui] run tellraw @s [{"text":"メニューを開いた！"}]
# execute as @s on origin run function neofunction:player/inventory/save
# execute as @s on origin run function neofunction:player/inventory/load/csgui
##########################

