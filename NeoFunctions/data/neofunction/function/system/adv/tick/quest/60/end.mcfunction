# 命名：end
# 説明：
# >advancement neofunction:system/adv/tick/quest/20/7
# =/function neofunction:system/adv/tick/quest/60/end


## 内容

# VFX
execute as @s run tellraw @s [{"text":"＊","color":"#D8DE2A","bold":false,"italic":true},{"selector":"@s","color":"#1E90FF","bold":true,"italic":false},{"text":"がメインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"蹄音は大地に刻まれる","color":"dark_aqua","bold":true,"italic":false},{"text":"を達成した","color":"#FFD700","bold":true,"italic":false}]

execute as @s at @s run title @a[distance=..64] subtitle [{"text":"꧁","color":"dark_purple","bold":true,"italic":false},{"text":"MainQuest Clear","color":"#B084DC","bold":true,"italic":false},{"text":"꧂","color":"dark_purple","bold":true,"italic":false}]

execute as @s at @s run title @a[distance=..64] title {"text":" メインクエストを達成した","color":"dark_green","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false}

execute as @s at @s run playsound block.bell.use record @s ~ ~ ~ 0.1 1.0
execute as @s at @s run playsound block.beacon.activate record @s ~ ~ ~ 1.0 1.4
execute as @s at @s run playsound block.beacon.power_select record @s ~ ~ ~ 1.0 1.4

# メインクエスト2章の報酬をここに書く
loot spawn ~ ~ ~ loot neofunction:item/1606

# メインクエスト初期化処理
function neofunction:system/adv/tick/quest/60/init