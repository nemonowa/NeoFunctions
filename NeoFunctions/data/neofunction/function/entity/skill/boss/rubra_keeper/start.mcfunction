# 命名：start
# 説明：【追加：2026-10-09 ルブラ編】涸れの番人との戦いを始める：番人の間の中心（目印 rubra_keeper_center）に本体と像を出す
# 実行条件：#temp main_story 427（会話の最後の Command、または負けたあとのやり直し）
# >/function neofunction:system/adv/tick/quest/40/d2/427
# =/function neofunction:entity/skill/boss/rubra_keeper/start

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 427 run return 0
execute if entity @e[type=iron_golem,tag=rubra_keeper] run return 0
data modify storage neofunction:rubra d2.kretry set value 0b
execute as @e[type=marker,tag=rubra_keeper_center,limit=1] at @s run function neofunction:entity/skill/boss/rubra_keeper/spawn
# 【変更：2026-10-14】ミラはひとこと残して戦場から離れる（黒い水の通路の上へ。倒すか負けると戻る）。入ってきた東の通路を黒い水の膜でふさぐ
execute as @e[type=villager,tag=rubra_mira] at @s run tellraw @a[distance=..64] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「わたしは水門の上で、水の流れを見てます……！ 旅人さん、番人を、楽にしてあげて」"}]
execute as @e[type=villager,tag=rubra_mira] at @s run particle minecraft:splash ~ ~1 ~ 0.4 0.8 0.4 0 30 normal
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 974.5 52 3158.5 180 0
execute in neodimension:ceresta_festa run fill 970 40 3138 970 43 3141 minecraft:black_stained_glass replace minecraft:air
tellraw @a[distance=..48] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"壁ぎわの四つの水門を 30 秒のうちにすべて開けて番人を洗い、黒い水が落ちたすきに攻撃する","color":"white","bold":true,"italic":false,"underlined":false}]
