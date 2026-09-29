# 命名：clear
# 説明：共通処理：クリア時演出処理
# >/function neofunction:system/adv/inventory_changed/structure_block/<NUMBER>
# =/function neofunction:asset/event/quest/clear




## 内容
#execute as @s at @s run tellraw @a [{"text":"＊","color":"#D8DE2A","bold":false},{"selector":"@s","color":"gold","bold":true},{"text":"がクエストを達成した！","color":"#FFD700","bold":false}]

execute as @s at @s run title @s subtitle [{"text":"꧁","color":"gold","bold":true,"italic":false},{"text":"Quest Clear","color":"#FFFFFF","bold":true,"italic":false},{"text":"꧂","color":"gold","bold":true,"italic":false}]


execute as @s at @s run title @s title [{"text":"|||","color":"gold","bold":true,"underlined":false,"strikethrough":false,"obfuscated":true},{"text":" クエストを達成した。","color":"#ADFF2F","bold":true,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"|||","color":"gold","bold":true,"underlined":false,"strikethrough":false,"obfuscated":true}]


#花火
execute as @s at @s run playsound entity.firework_rocket.twinkle_far record @s ~ ~ ~ 1.0 1.2

execute as @s at @s run scoreboard players add @s questsuccesscount 1