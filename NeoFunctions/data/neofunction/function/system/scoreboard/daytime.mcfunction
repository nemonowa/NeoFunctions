# 命名：daytime
# 説明：tick時間スコアを 時間(temp3) 分(temp2) 秒(temp1) に変換する
# >
# =/function neofunction:system/scoreboard/daytime


#変換したいスコアを呼び出しファンクションに記入
execute as @s store result score @s temp1 run time of minecraft:overworld query minecraft:day
scoreboard players operation @s temp2 = $100 const
scoreboard players operation @s temp2 *= $60 const
scoreboard players operation @s temp1 += @s temp2
scoreboard players operation @s temp2 = @s temp1
scoreboard players operation @s temp1 /= $1000 const
scoreboard players operation @s temp2 %= $1000 const
scoreboard players operation @s temp2 *= $60 const
scoreboard players operation @s temp2 /= $1000 const