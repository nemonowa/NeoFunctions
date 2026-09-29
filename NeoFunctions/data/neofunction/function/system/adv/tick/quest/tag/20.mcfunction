# 命名：10
# 説明：クエスト個別タグ付与&重複受注検知
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/tag/20

#内容
#もしワールドでメインクエストが進行していたら！
execute unless score #temp main_story matches 0 run playsound minecraft:block.note_block.bass record @a ~ ~ ~ 2.0 0.5
execute unless score #temp main_story matches 0 run loot spawn ~ ~ ~ loot neofunction:item/mamon/16
execute unless score #temp main_story matches 0 run return run title @a actionbar "対象または別のメインクエストが進行中です"

#スタート演出へ メインクエスト
execute as @s run function neofunction:system/adv/tick/quest/20/start
