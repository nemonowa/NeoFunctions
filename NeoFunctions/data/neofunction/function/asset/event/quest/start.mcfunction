# 命名：start
# 説明：共通処理：クエスト開始
# >/function neofunction:asset/event/quest/start
# =/function neofunction:asset/event/quest/start


## 内容
execute as @s[tag=!quest] at @s run title @s subtitle [{"text":"꧁","color":"gold","bold":true,"italic":false},{"text":"QuestStart","color":"#FFFFFF"},{"text":"꧂"}]
execute as @s[tag=!quest] at @s run title @s title [{"text":"|||","color":"gold","bold":true,"italic":false,"obfuscated":true},{"text":" クエストを受注した","color":"#87CEFA","obfuscated":false},{"text":"|||"}]

execute as @s[tag=!quest] at @s run playsound minecraft:item.goat_horn.sound.1 record @s ~ ~ ~ 1 1.47

tag @s add quest