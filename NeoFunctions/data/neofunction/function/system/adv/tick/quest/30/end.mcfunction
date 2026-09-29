# 命名：end
# 説明：
# >/function neofunction:system/world/ceresta/palace/yellow
# =/function neofunction:system/adv/tick/quest/30/end


## 内容

# VFX
execute as @a run tellraw @s [{"text":"＊","color":"#D8DE2A","bold":false,"italic":true},{"selector":"@s","color":"#1E90FF","bold":true,"italic":false},{"text":"がメインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"黄金麦とフェスタ","color":"gold","bold":true,"italic":false},{"text":"を達成した","color":"#FFD700","bold":true,"italic":false}]

execute as @a at @s run title @s subtitle [{"text":"꧁","color":"dark_purple","bold":true,"italic":false},{"text":"MainQuest Clear","color":"#B084DC","bold":true,"italic":false},{"text":"꧂","color":"dark_purple","bold":true,"italic":false}]

execute as @a at @s run title @s title {"text":" メインクエストを達成した","color":"dark_green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false}

execute as @a at @s run playsound block.bell.use record @s ~ ~ ~ 0.1 1.0
execute as @a at @s run playsound block.beacon.activate record @s ~ ~ ~ 1.0 1.4
execute as @a at @s run playsound block.beacon.power_select record @s ~ ~ ~ 1.0 1.4

# メインクエスト初期化処理
scoreboard players set #temp main_story 0
scoreboard players set #cleared_mainquest_chapter3 main_story 1
#adv達成
advancement grant @a only neoadvancement:ceresta/root/2/1
# thanks!
schedule function neofunction:system/adv/tick/quest/30/thanks1 5s