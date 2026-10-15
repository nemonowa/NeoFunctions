# 命名：give_wedge
# 説明：天墜の楔（1918、素材 3）を渡す。毎回渡す（終章ではミラに話しかけるたびに受け取れる：fin/mira_wedge）
# 実行条件：実行者 プレイヤー（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/438（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/give_wedge

# 内容
tag @s add rubra_wedge
loot give @s loot neofunction:item/1918
