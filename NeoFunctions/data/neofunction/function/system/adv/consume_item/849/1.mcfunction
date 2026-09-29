# 命名：1
# 説明：進捗達成時
# >/function neofunction:consume_item/849
# =/function neofunction:system/adv/consume_item/849/1

# 内容：
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「平凡を嫌った」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「評価に縛られる自分になった」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「愛せないことで、すべてを失った」"}]
tellraw @a [{"text":"<","color":"red","italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"転生リンゴは消費されない！"}]}},{"selector":"@s","color":"red"},{"text":"> 「あー、またダメでした。転生しよう」"}]

effect give @s luck 30 4
effect give @s night_vision 30 1
effect give @s jump_boost 30 4

effect give @s hunger 30 3
effect give @s weakness 30 3

execute at @s run execute at @s run loot spawn ~ ~ ~ loot neofunction:item/849


