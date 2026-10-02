# 命名：地獄のカレーパン 食事処理
# 説明：地獄のカレーパン（ID1039）を食べた時の処理。HP25%回復＋攻撃力上昇＋火炎耐性
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1039
# =/function neofunction:system/adv/consume_item/1039

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# HP回復：最大体力の25%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.25

# 追加効果
effect give @s minecraft:strength 300 0
effect give @s minecraft:fire_resistance 60 0
