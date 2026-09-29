# 命名：rotten
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/enchanted_golden_apple
# =/function neofunction:system/adv/consume_item/rotten

## 内容
execute as @s at @s run execute as @e[distance=..16,limit=100] run say 「この中に腐肉を喰っている奴がいる！！！」
execute if predicate neofunction:random_chance/5 run function neofunction:entity/attribute/infection
