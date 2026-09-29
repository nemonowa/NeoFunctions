# 命名：load
# 説明：score_to_attribute
# >/function neofunction:asset/event/log-in
# >/function neofunction:player/level/3_lvl_up
# >/function neofunction:player/survival/respawn
# >/function neofunction:system/adv/consume_item/milk_bucket
# =/function neofunction:player/attribute/load


# 内容
execute store result storage neofunction:player hp int 1 run scoreboard players get hp LVL
execute store result storage neofunction:player def int 1 run scoreboard players get def LVL
execute store result storage neofunction:player atk double 0.1 run scoreboard players get atk LVL

# マクロ発動用
function neofunction:player/attribute/macro with storage neofunction:player

say 古い処理が呼び出されました！


#スコアボードでは扱えない少数値をストレージで扱うときのdouble型