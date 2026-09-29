# 命名：4
# 説明：進捗達成時
# >/function neofunction:consume_item/849
# =/function neofunction:system/adv/consume_item/849/4

# 内容：
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「正しさを疑い、世界に刃を向けた」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「その意志は、多くを救った」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「しかし気づけばその意思は、守るべきものを巻き込んだ」"}]
tellraw @a [{"text":"<","color":"red","italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"転生リンゴは消費されない！"}]}},{"selector":"@s","color":"red"},{"text":"> 「あー、またダメでした。転生しよう」"}]

effect give @s strength 30 4
effect give @s resistance 30 2

effect give @s hunger 30 3
effect give @s mining_fatigue 30 2

execute at @s run loot spawn ~ ~ ~ loot neofunction:item/849
