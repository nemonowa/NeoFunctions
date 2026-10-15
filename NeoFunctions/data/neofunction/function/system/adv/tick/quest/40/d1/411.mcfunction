# 命名：411
# 説明：バルドの話のあと：坑道に入る段階。ミラは三の層の坂の下（829, 25, 3287）へ先回りする
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d1/410（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/411

# 内容
execute unless score #temp main_story matches 410 run return 0
scoreboard players set #temp main_story 411
data remove storage neofunction:rubra busy
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 829.5 25 3287.5 180 0
tellraw @a[distance=..48] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"赤い足跡をたどって、坑道の奥（三の層）へ","color":"white","bold":true,"italic":false,"underlined":false}]
