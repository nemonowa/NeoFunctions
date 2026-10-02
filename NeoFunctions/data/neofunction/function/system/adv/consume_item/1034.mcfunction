# 命名：ぐるぐる竜巻ドーナツ 食事処理
# 説明：ぐるぐる竜巻ドーナツ（ID1034）を食べた時の処理。満腹度回復＋移動速度上昇
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1034
# =/function neofunction:system/adv/consume_item/1034

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# 満腹度回復＋移動速度上昇
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:speed 300 0
