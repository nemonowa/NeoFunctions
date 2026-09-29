# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/50


# 内容

execute as @a at @s run function neofunction:system/adv/tick/quest/20/end
execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"}] at @s run kill @e[type=minecraft:item_display,distance=..3]