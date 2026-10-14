# 命名：433_end
# 説明：【追加：2026-10-09 ルブラ編】塔の場面のあと：ミラは揺籃の最初の区画（目印 rubra_mira_c1）へ先に下りる
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/433（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/433_end

# 内容
data remove storage neofunction:rubra busy
execute as @e[type=marker,tag=rubra_mira_c1,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"塔の下の階段を下り、零の揺籃へ","color":"white","bold":true,"italic":false,"underlined":false}]
