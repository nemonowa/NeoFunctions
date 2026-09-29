# 命名：2
# 説明：進捗達成時
# >/function neofunction:consume_item/849
# =/function neofunction:system/adv/consume_item/849/2

# 内容：
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「誰も愛せず、世界を救おうとした」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「奇跡のような発明を手に入れた」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「その発明は、血の色に染まってしまった」"}]
tellraw @a [{"text":"<","color":"red","italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"転生リンゴは消費されない！"}]}},{"selector":"@s","color":"red"},{"text":"> 「あー、またダメでした。転生しよう」"}]


effect give @s water_breathing 30 2
effect give @s night_vision 30 2
effect give @s haste 30 1

effect give @s nausea 30 0
effect give @s poison 30 0

execute at @s run loot spawn ~ ~ ~ loot neofunction:item/849

