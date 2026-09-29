# 命名：neo
# 説明：
# >=/function neofunction:player/level/synchronize/.neo
# =/function neofunction:player/level/synchronize/neo

# 説明：所得したネザースターをレベルに割り当てる処理(EXP→LVL)レベルを上げて次のレベルに必要な各項目を設定し直す。
# 実行条件：IMP(レベルアップに必要な経験値数を超えた時



# 内容
scoreboard players add 00000000-0000-0000-0000-000000000001 LVL 1

#scoreboard players operation @s LVL = 00000000-0000-0000-0000-000000000001 LVL

scoreboard players operation next EXP = 00000000-0000-0000-0000-000000000001 LVL

scoreboard players operation next EXP *= $10 const

scoreboard players operation used EXP += next EXP

scoreboard players operation left EXP = 00000000-0000-0000-0000-000000000001 EXP

scoreboard players operation left EXP -= used EXP

function neofunction:player/level/synchronize/neoo
