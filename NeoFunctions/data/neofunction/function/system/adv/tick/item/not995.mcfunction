# 命名：not995
# 説明：採掘上昇の後処理
# 実行条件：火器から手を離した時
# >
# =/function neofunction:system/adv/tick/item/not995

effect clear @s haste
tag @s remove item995

execute unless score @s HasteLevel matches 1.. run return 0
execute unless score @s HasteDuration matches 20.. unless score @s HasteDuration matches -1 run scoreboard players reset @s HasteLevel
execute unless score @s HasteDuration matches 20.. unless score @s HasteDuration matches -1 run return run scoreboard players reset @s HasteDuration
# 採掘上昇を戻す
data remove storage neofunction:item/995 HasteLevel
data remove storage neofunction:item/995 HasteDuration
scoreboard players remove @s HasteLevel 1
execute store result storage neofunction:item/995 HasteLevel int 1 run scoreboard players get @s HasteLevel
execute if score @s HasteDuration matches -1 run data modify storage neofunction:item/995 HasteDuration set value "infinite"
execute unless score @s HasteDuration matches -1 run scoreboard players operation @s HasteDuration /= $20 const
execute unless score @s HasteDuration matches -1 store result storage neofunction:item/995 HasteDuration int 1 run scoreboard players get @s HasteDuration
function neofunction:system/adv/tick/item/not995_macro with storage neofunction:item/995 {}

scoreboard players reset @s HasteLevel
scoreboard players reset @s HasteDuration