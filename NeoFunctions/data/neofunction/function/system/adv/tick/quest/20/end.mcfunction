# 命名：end
# 説明：共通処理：クエスト開始
# >/function neofunction:system/adv/tick/quest/20/tellraw/50
# =/function neofunction:system/adv/tick/quest/20/end


## 内容

# VFX
tellraw @s [{"text":"＊","color":"#D8DE2A","bold":false,"italic":true},{"selector":"@s","color":"#1E90FF","bold":true,"italic":false},{"text":"がメインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"蹄音は大地に刻まれる","color":"dark_aqua","bold":true,"italic":false},{"text":"を達成した","color":"#FFD700","bold":true,"italic":false}]

title @a[distance=..64] subtitle [{"text":"꧁","color":"dark_purple","bold":true,"italic":false},{"text":"MainQuest Clear","color":"#B084DC","bold":true,"italic":false},{"text":"꧂","color":"dark_purple","bold":true,"italic":false}]

title @a[distance=..64] title {"text":" メインクエストを達成した","color":"dark_green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false}

loot give @s loot neofunction:item/1665

execute as @a at @s run playsound block.bell.use record @a ~ ~ ~ 0.1 1.0
execute as @a at @s run playsound block.beacon.activate record @a ~ ~ ~ 1.0 1.4
execute as @a at @s run playsound block.beacon.power_select record @a ~ ~ ~ 1.0 1.4

#adv達成
advancement grant @a only neoadvancement:ceresta/root/2/1
#メインクエスト初期化処理
scoreboard players set #temp main_story 0