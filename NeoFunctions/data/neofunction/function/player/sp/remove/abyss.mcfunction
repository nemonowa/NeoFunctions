# 命名：abyss
# 説明：
# >/function neofunction:system/adv/enter_block/water1s
# =/function neofunction:player/sp/remove/abyss

# 基準Y座標 (この地点で減少量0になる)
scoreboard players set #Calc1 temp 200
# 減少率の変化量 (10000blockあたりN%)
scoreboard players set #Calc2 temp 200

# 以下システム
execute store result score #Calc3 temp run data get entity @s Pos[1]
# SP += (Calc3-Calc1)*Calc2*SPmax/100000
# +=なのはCalc3-Calc1がマイナスだから
scoreboard players operation #Calc3 temp -= #Calc1 temp
scoreboard players operation #Calc3 temp *= #Calc2 temp
scoreboard players operation #Calc3 temp *= @s SPmax
scoreboard players operation #Calc3 temp /= $1000 const
scoreboard players operation #Calc3 temp /= $1000 const
scoreboard players operation @s SP += #Calc3 temp