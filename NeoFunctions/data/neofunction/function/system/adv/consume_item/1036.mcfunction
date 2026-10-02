# 命名：黄金マシマシラーメン 食事処理
# 説明：黄金マシマシラーメン（ID1036）を食べた時の処理。HP20%回復＋耐性
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1036
# =/function neofunction:system/adv/consume_item/1036

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# HP回復：最大体力の20%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.2

# 追加効果
effect give @s minecraft:resistance 300 0
