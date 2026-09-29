# 命名：variation
# 説明：score_to_attribute
# 実行条件：impulse
# >/
# =/function neofunction:entity/attribute/variation/variation



# 内容
execute store result storage neofunction:player hp int 1 run scoreboard players get hp LVL
execute store result storage neofunction:player def int 1 run scoreboard players get def LVL
execute store result storage neofunction:player atk double 0.1 run scoreboard players get atk LVL


# マクロ発動用
function neofunction:player/attribute/macro with storage neofunction:player



#スコアボードでは扱えない少数値をストレージで扱うときのdouble型