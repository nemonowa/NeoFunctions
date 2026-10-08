# 命名：419
# 説明：【追加：2026-10-08 ルブラ編】第一章「紅脈の坑」の終わり。進み具合 419（第二章「涸れ泉の聖堂」は 420 から。まだ作っていない）
# 実行条件：実行者 プレイヤー（会話の最後の Command。418 のときだけ進める）
# >/function neofunction:system/adv/tick/quest/40/d1/418（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/419

# 内容
execute unless score #temp main_story matches 418 run return 0
scoreboard players set #temp main_story 419
data remove storage neofunction:rubra busy
execute as @a[distance=..64] run tellraw @s [{"text":"＊","color":"#D8DE2A","italic":true},{"selector":"@s","color":"#1E90FF","bold":true,"italic":false},{"text":"がメインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"紅脈の坑","color":"#D7263D","bold":true,"italic":false},{"text":"を達成した","color":"#FFD700","bold":true,"italic":false}]
execute as @a[distance=..64] at @s run title @s subtitle [{"text":"꧁","color":"dark_purple","bold":true},{"text":"第一章　紅脈の坑","color":"#FF8A7A","bold":true},{"text":"꧂","color":"dark_purple","bold":true}]
execute as @a[distance=..64] at @s run title @s title {"text":"メインクエストを達成した","color":"dark_green","bold":true}
execute as @a[distance=..64] at @s run playsound minecraft:block.beacon.power_select record @s ~ ~ ~ 1.0 1.2
