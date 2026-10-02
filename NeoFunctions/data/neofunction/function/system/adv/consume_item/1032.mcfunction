# 命名：鋼鉄カリゴリチップス 食事処理
# 説明：鋼鉄カリゴリチップス（ID1032）を食べた時の処理。HP10%回復＋採掘速度上昇、咀嚼音で発光
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1032
# =/function neofunction:system/adv/consume_item/1032

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# HP回復：最大体力の10%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.1

# 追加効果
effect give @s minecraft:haste 60 0

# 咀嚼音で居場所がバレる
effect give @s minecraft:glowing 10 0
