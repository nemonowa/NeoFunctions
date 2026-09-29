# 命名：317
# 説明：進捗達成時
# 説明：ワイルドベリー
# >/function neofunction:consume_item/317
# =/function neofunction:system/adv/consume_item/317


## 内容：ランダムなベリー処理へ
execute if predicate neofunction:random_chance/5 run return run function neofunction:system/adv/consume_item/318
execute if predicate neofunction:random_chance/60 run return run function neofunction:system/adv/consume_item/319
execute if predicate neofunction:random_chance/30 run return run function neofunction:system/adv/consume_item/320
function neofunction:system/adv/consume_item/321


# ランダム値を抽選
# execute store result score random temp run random value 1..4

# ランダム値に応じてコマンドを実行
# execute if score random temp matches 1 run function neofunction:system/adv/consume_item/321



