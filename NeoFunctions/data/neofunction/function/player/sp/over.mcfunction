# 命名：over
# 説明：MP飽和時
# 実行条件：@a 1s
# >/function neofunction:clock/1_second
# =/function neofunction:player/sp/over



# 内容
scoreboard players remove @s SP 1
# title @s actionbar [{"text":"注：ソウルの飽和 ","color":"red","bold":false},{"score":{"name":"@s","objective":"SP"},"color":"red","bold":true}]

# 150%を超えたらデバフ
# execute as @s if score @s SP < @s SP150p run return 0

# effect give @s minecraft:blindness 5 9
# effect give @s minecraft:weakness 5 9
# effect give @s minecraft:slowness 5 4
# effect give @s minecraft:mining_fatigue 5 9

# 200%を超えたら死ぬ
execute as @a if score @s SP > @s SP200p run trigger kill set 9
execute as @a if score @s SP > @s SP200p run scoreboard players set @s SP 100
