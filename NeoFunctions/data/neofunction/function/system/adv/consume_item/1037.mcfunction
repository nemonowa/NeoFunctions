# 命名：爆裂ポップコーン 食事処理
# 説明：爆裂ポップコーン（ID1037）を食べた時の処理。HP10%回復＋跳躍力上昇（クリティカル補助）
# 実行条件：consume_item 進捗の報酬として実行者（プレイヤー）に対して実行
# >/advancement neofunction:consume_item/1037
# =/function neofunction:system/adv/consume_item/1037

# 内容
# 【追加：2026-09-30 ハービット屋台飯の効果実装】
# HP回復：最大体力の10%を heal へ渡す
execute store result score @s heal run attribute @s minecraft:max_health get 0.1

# 追加効果（ジャンプ攻撃のクリティカル補助）
effect give @s minecraft:jump_boost 180 0
