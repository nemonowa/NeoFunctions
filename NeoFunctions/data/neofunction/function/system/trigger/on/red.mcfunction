# 命名：red
# 説明：スキルメモリー：リセットせずに保管される（スキルクイックアクセス用）
# 説明：トリガー：@a[scores={on=1..}]
# >/function neofunction:system/adv/tick/entity_scores/c_stick
# =/function neofunction:system/trigger/on/red


# 内容（スコアをストレージに変換して、マクロで対応するスキル関数を発動
scoreboard players operation @s on = @s slotR
