# 命名：mira_go
# 説明：【追加：2026-10-09 ルブラ編】ミラが次の待つ所（目印 rubra_mira_<to>）へ先回りする
# 実行条件：引数 to＝c1〜c4（会話の最後の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/434（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/435（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/436（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/mira_go

# 内容
data remove storage neofunction:rubra busy
$execute as @e[type=marker,tag=rubra_mira_$(to),limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
