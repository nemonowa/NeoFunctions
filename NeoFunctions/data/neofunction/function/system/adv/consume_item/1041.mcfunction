# 命名：ハビアット焼きそばまんじゅう 食事処理
# 説明：ハビアット焼きそばまんじゅう（ID1041）を食べた時の処理。満腹度回復＋攻撃力上昇
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1041
# =/function neofunction:system/adv/consume_item/1041

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# 満腹度回復＋攻撃力上昇
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:strength 180 0
