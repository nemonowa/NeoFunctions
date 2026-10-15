# 命名：boss_start
# 説明：ソウルイーターとの戦いを始める。真ん中の穴の下に本体（901）・頭・体の節 12・当たり判定 12 を出し、動きの記録を用意する。柱を元に戻し、ミラは戦場から離れる
# 実行条件：#temp main_story 414（会話の最後の Command、または負けたあとのやり直し）
# >/function neofunction:system/adv/tick/quest/40/d1/414（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# =/function neofunction:system/adv/tick/quest/40/d1/boss_start

# 内容
execute unless score #temp main_story matches 414 run return 0
scoreboard players set #temp main_story 415
data remove storage neofunction:rubra busy
data modify storage neofunction:rubra d1.retry set value 0b
# 柱を元に戻す。ミラはひとこと残して、戦場から離れる（坑夫の休み場へ。倒すと戻る：rubra_worm/dead）
execute in neodimension:ceresta_festa run function neofunction:entity/skill/boss/rubra_worm/pillars_restore
execute in neodimension:ceresta_festa as @e[type=villager,tag=rubra_mira] at @s run tellraw @a[distance=..64] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「わたしじゃ足手まといになる……！ 旅人さん、あいつの頭を！ それと、柱――あの勢いで柱にぶつかれば、きっと！」"}]
execute in neodimension:ceresta_festa as @e[type=villager,tag=rubra_mira] at @s run particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.05 30 normal
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 846.5 13 3258.5 180 0
execute in neodimension:ceresta_festa positioned 812.5 -46 3268.5 run function neofunction:entity/skill/boss/rubra_worm/spawn
tellraw @a[distance=..64] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"ソウルイーターを止める","color":"white","bold":true,"italic":false,"underlined":false}]
