# 命名：neo
# 説明：個別処理。所得したネザースターをレベルに割り当てる処理(EXP→LVL)レベルを上げて次のレベルに必要な各項目を設定し直す。
# 実行条件：IMP(レベルアップに必要な経験値数を超えた時
# >/function neofunction:player/1_detection
# =/function neofunction:player/level/independent/neo



# 内容
scoreboard players add @s LVL 1

scoreboard players operation next EXP = @s LVL

scoreboard players operation next EXP *= $10 const

scoreboard players operation used EXP += next EXP

scoreboard players operation left EXP = @s EXP

scoreboard players operation left EXP -= used EXP

function neofunction:player/level/3_lvl_up