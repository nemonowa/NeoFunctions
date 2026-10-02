# 命名：モンスタータコス 食事処理
# 説明：モンスタータコス（ID1031）を食べた時の処理。採掘速度上昇（攻撃速度UPの代用）
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1031
# =/function neofunction:system/adv/consume_item/1031

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# 採掘速度上昇（攻撃速度も上がるため攻撃速度UPの代用）
effect give @s minecraft:haste 180 0
