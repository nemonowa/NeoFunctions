# 命名：420_go
# 説明：【追加：2026-10-09 ルブラ編】ミラが水守の館（目印 rubra_mira_kan）へ先に行く
# 実行条件：実行者 プレイヤー（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d2/420（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d2/420_go

# 内容
data remove storage neofunction:rubra busy
execute as @e[type=marker,tag=rubra_mira_kan,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tellraw @s [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"湖のほとりの水守の館へ。水守頭オルドに話しかける","color":"white","bold":true,"italic":false,"underlined":false}]
