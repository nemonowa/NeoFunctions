# 命名：くるくる回る串焼きタワー 食事処理
# 説明：くるくる回る串焼きタワー（ID1030）を食べた時の処理。HP10%回復＋耐性
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1030
# =/function neofunction:system/adv/consume_item/1030

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# HP回復：最大体力の10%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.1

# 追加効果
effect give @s minecraft:resistance 180 0
