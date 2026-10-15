# 命名：start
# 説明：星喰みのセレンとの戦いを始める：球の広間の中心（目印 rubra_arena_center）に出す
# 実行条件：#temp main_story 437（会話の最後の Command、または負けたあとのやり直し）
# >/function neofunction:system/adv/tick/quest/40/d3/437
# =/function neofunction:entity/skill/boss/rubra_cradle/start

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 437 run return 0
execute if entity @e[type=evoker,tag=rubra_eater] run return 0
data modify storage neofunction:rubra d3.retry set value 0b
execute as @e[type=marker,tag=rubra_arena_center,limit=1] at @s run function neofunction:entity/skill/boss/rubra_cradle/spawn
tellraw @a[distance=..48] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"セレンのまわりの赤い欠片をすべて無くす（叩いて砕く／守り石で抜く）と守りが解けて気絶する。そのすきに攻撃して力を削る（足もとの赤い印からは離れる）","color":"white","bold":true,"italic":false,"underlined":false}]
