# 命名：mira_to_bottom
# 説明：【追加：2026-10-08 ルブラ編】ミラが大空洞の下の乗り場のそば（822, -40, 3260）へ先に下りる
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d1/413（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d1/mira_to_bottom

# 内容
data remove storage neofunction:rubra busy
execute in neodimension:ceresta_festa run tp @e[type=villager,tag=rubra_mira] 822.5 -40 3260.5 135 0
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"乗り場（縦穴の南東の角）のトロッコで、縦穴の底へ","color":"white","bold":true,"italic":false,"underlined":false}]
