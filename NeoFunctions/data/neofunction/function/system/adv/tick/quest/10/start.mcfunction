# 命名：start
# 説明：共通処理：クエスト開始
# >/function neofunction:system/adv/tick/quest/tag/10
# =/function neofunction:system/adv/tick/quest/10/start


## 内容
#初めて話しかけたときはメインストーリーを開始し、一度話しかけたらそれ以降はメインクエストを開始しないようにする。
scoreboard players set #started_mainquest_chapter1 main_story 1

#メインクエストで使用されるフラグの初期化
function neofunction:system/adv/tick/quest/10/init

tellraw @a [{"text":"＊","color":"#D8DE2A","bold":true,"italic":false},{"selector":"@p","color":"#1E90FF"},{"text":"がメインクエスト：","color":"#FFD700"},{"text":"蒼き入江と海賊の秘宝","color":"dark_aqua"},{"text":"を受注した","color":"#FFD700"}]

title @a subtitle [{"text":"꧁","color":"dark_purple","bold":true,"italic":false},{"text":"MainQuest Start","color":"#B084DC"},{"text":"꧂"}]
title @a title {"text":" メインクエストを受注した","color":"dark_green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false}

execute as @a at @s run playsound block.bell.use record @s ~ ~ ~ 0.1 1.0
execute as @a at @s run playsound block.beacon.activate record @s ~ ~ ~ 1.0 1.4
execute as @a at @s run playsound block.beacon.power_select record @s ~ ~ ~ 1.0 1.4

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"ビリーに話を聞く","color":"white","bold":true,"italic":false,"underlined":false}]
execute as @a at @s run playsound entity.player.levelup record @s ~ ~ ~ 2.0 0.7
effect give @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},limit=1,sort=nearest] minecraft:glowing infinite 127 false

#メインクエストの進行率変更
scoreboard players set #temp main_story 1



