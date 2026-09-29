# 命名：end
# 説明：共通処理：クエスト開始
# >/neofunction:system/adv/tick/quest/10/6
# =/function neofunction:system/adv/tick/quest/10/end


## 内容

# VFX
execute as @s run tellraw @s [{"text":"＊","color":"#D8DE2A","bold":false,"italic":true},{"selector":"@s","color":"#1E90FF","bold":true,"italic":false},{"text":"がメインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"蒼き入江と海賊の秘宝","color":"dark_aqua","bold":true,"italic":false},{"text":"を達成した","color":"#FFD700","bold":true,"italic":false}]

execute as @s at @s run title @a[distance=..64] subtitle [{"text":"꧁","color":"dark_purple","bold":true,"italic":false},{"text":"MainQuest Clear","color":"#B084DC","bold":true,"italic":false},{"text":"꧂","color":"dark_purple","bold":true,"italic":false}]

execute as @s at @s run title @a[distance=..64] title {"text":" メインクエストを達成した","color":"dark_green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false}

loot give @s loot neofunction:item/1664

execute as @s at @s run playsound block.bell.use record @s ~ ~ ~ 0.1 1.0
execute as @s at @s run playsound block.beacon.activate record @s ~ ~ ~ 1.0 1.4
execute as @s at @s run playsound block.beacon.power_select record @s ~ ~ ~ 1.0 1.4

#adv達成
advancement grant @a only neoadvancement:ceresta/root/1/1
#メインクエスト初期化処理
scoreboard players set #temp main_story 0
scoreboard players set #progressing main_story 0