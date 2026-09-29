# 命名：2
# 説明：金床GUIを消す
# 説明：# 内容
# >/function neofunction:system/adv/item_used_on_block/anvil/1
# =/function neofunction:system/adv/item_used_on_block/anvil/2

# GUIを消す
execute as @e[tag=ReplFS] at @s if block ~ ~ ~ minecraft:end_portal_frame[facing=north] run setblock ~ ~ ~ minecraft:anvil[facing=north]
execute as @e[tag=ReplFS] at @s if block ~ ~ ~ minecraft:end_portal_frame[facing=east] run setblock ~ ~ ~ minecraft:anvil[facing=east]
execute as @e[tag=ReplFS] at @s if block ~ ~ ~ minecraft:end_portal_frame[facing=south] run setblock ~ ~ ~ minecraft:anvil[facing=south]
execute as @e[tag=ReplFS] at @s if block ~ ~ ~ minecraft:end_portal_frame[facing=west] run setblock ~ ~ ~ minecraft:anvil[facing=west]

# marker削除
execute as @e[tag=ReplFS] run kill @s

