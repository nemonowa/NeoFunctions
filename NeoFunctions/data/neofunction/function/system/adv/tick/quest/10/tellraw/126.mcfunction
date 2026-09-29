# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/126


# 内容

execute as @a at @s run function neofunction:system/adv/tick/quest/10/end
kill @e[type=minecraft:item_display,tag=tempdisplay,limit=1,sort=nearest]



