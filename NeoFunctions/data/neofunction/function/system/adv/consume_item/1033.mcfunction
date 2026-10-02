# 命名：ハビアット流爆弾コロッケ 食事処理
# 説明：ハビアット流爆弾コロッケ（ID1033）を食べた時の処理。HP10%回復＋攻撃力上昇、辛さ爆弾で吐き気
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1033
# =/function neofunction:system/adv/consume_item/1033

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# HP回復：最大体力の10%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.1

# 追加効果
effect give @s minecraft:strength 60 0

# 辛さ爆弾（弱体）
effect give @s minecraft:nausea 5 0
