# 命名：5
# 説明：進捗達成時
# >/function neofunction:consume_item/849
# =/function neofunction:system/adv/consume_item/849/5

# 内容：
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「理想を追い求め、迷わず進み続けた。」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「その姿は人々の心を動かした。」"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「しかしその代償は、他人に押し付けられていた。」"}]
tellraw @a [{"text":"<","color":"red","italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"転生リンゴは消費されない！"}]}},{"selector":"@s","color":"red"},{"text":"> 「あー、またダメでした。転生しよう」"}]

effect give @s speed 30 2
effect give @s jump_boost 30 2
effect give @s haste 30 2

effect give @s hunger 30 2
effect give @s weakness 30 2

execute at @s run loot spawn ~ ~ ~ loot neofunction:item/849

