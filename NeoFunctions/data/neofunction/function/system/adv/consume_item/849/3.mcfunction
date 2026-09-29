# 命名：3
# 説明：進捗達成時
# >/function neofunction:consume_item/849
# =/function neofunction:system/adv/consume_item/849/3

# 内容：
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「血を洗い流すように、愛を配り続け」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「人々は頭を下げ、その名を讃えた」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「気づけばその身は、何も残っていなかった。」"}]
tellraw @a [{"text":"<","color":"red","italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"転生リンゴは消費されない！"}]}},{"selector":"@s","color":"red"},{"text":"> 「あー、またダメでした。転生しよう」"}]

effect give @s regeneration 30 2

effect give @s poison 30 2
effect give @s wither 30 2

execute at @s run loot spawn ~ ~ ~ loot neofunction:item/849

