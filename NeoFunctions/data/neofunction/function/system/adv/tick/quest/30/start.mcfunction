# 命名：start
# 説明：共通処理：クエスト開始
# >/neofunction:system/adv/tick/quest/tag/30
# =/function neofunction:system/adv/tick/quest/30/start


## 内容
tellraw @s [{"text":"＊","color":"#D8DE2A","bold":true,"italic":false},{"selector":"@s","color":"#1E90FF"},{"text":"がメインクエスト：","color":"#FFD700"},{"text":"黄金麦とフェスタ","color":"gold"},{"text":"を受注した","color":"#FFD700"}]

title @a subtitle [{"text":"꧁","color":"dark_purple","bold":true,"italic":false},{"text":"MainQuest Start","color":"#B084DC"},{"text":"꧂"}]
title @a title {"text":" メインクエストを受注した","color":"dark_green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false}

execute as @a at @s run playsound block.bell.use record @s ~ ~ ~ 0.1 1.0
execute as @a at @s run playsound block.beacon.activate record @s ~ ~ ~ 1.0 1.4
execute as @a at @s run playsound block.beacon.power_select record @s ~ ~ ~ 1.0 1.4

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"商会長ニールから話を聞く","color":"white","bold":true,"italic":false,"underlined":false}]

execute as @a at @s run playsound entity.player.levelup record @s ~ ~ ~ 2.0 0.7

#メインクエストの進行率変更
scoreboard players set #temp main_story 31
