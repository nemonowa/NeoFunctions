# 命名：417
# 説明：【追加：2026-10-08 ルブラ編】選んだあと：地上へ戻る段階。ミラは坑道の入口の少し奥（875, 44, 3265）へ先に戻る
# 実行条件：実行者 プレイヤー（会話の最後の Command。416 のときだけ進める）
# >/function neofunction:system/adv/tick/quest/40/d1/choice_bury（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/choice_take（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/417

# 内容
execute unless score #temp main_story matches 416 run return 0
scoreboard players set #temp main_story 417
data remove storage neofunction:rubra busy
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 875.5 44 3265.5 -90 0
tellraw @a[distance=..64] [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"トロッコで上へ戻り、坑道の入口のバルドに知らせる","color":"white","bold":true,"italic":false,"underlined":false}]
