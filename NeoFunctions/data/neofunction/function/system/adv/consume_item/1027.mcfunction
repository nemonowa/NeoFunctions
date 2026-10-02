# 命名：トリプル・ガーベリト 食事処理
# 説明：トリプル・ガーベリト（ID1027）を食べた時の処理。満腹度全回復＋再生能力
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1027
# =/function neofunction:system/adv/consume_item/1027

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# 満腹度全回復＋再生能力
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:regeneration 60 0
