# 命名：メガ肉まんDX 食事処理
# 説明：メガ肉まんDX（ID1038）を食べた時の処理。満腹度回復＋体力増強＋HP20%回復
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1038
# =/function neofunction:system/adv/consume_item/1038

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# 満腹度回復＋体力増強（増強後の最大体力で回復量を出すため先に付与）
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:health_boost 300 0

# HP回復：最大体力の20%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.2
