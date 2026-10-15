# 命名：give_journals
# 説明：オルドから、アズールの手記 その五・その六・その七（1912〜1914）を受け取る。毎回渡す（タグ rubra_j567 は結末 C の条件に使うので付けるだけ。あとからはオルドに話しかけるたびに受け取れる）
# 実行条件：実行者 プレイヤー（会話の Command）
# >/function neofunction:system/adv/tick/quest/40/d3/431（会話の Command）
# =/function neofunction:system/adv/tick/quest/40/d3/give_journals

# 内容
tag @s add rubra_j567
loot give @s loot neofunction:item/1912
loot give @s loot neofunction:item/1913
loot give @s loot neofunction:item/1914
