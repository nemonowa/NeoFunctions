# 命名：percentage
# 説明：SP演算共通処理
# >/function neofunction:asset/particle/.levelup
# =/function neofunction:player/sp/percentage


# 内容
scoreboard players operation @s SP1p = @s SPmax
scoreboard players operation @s SP1p /= $100 const

scoreboard players operation @s SP5p = @s SPmax
scoreboard players operation @s SP5p /= $20 const

scoreboard players operation @s SP10p = @s SPmax
scoreboard players operation @s SP10p /= $10 const

scoreboard players operation @s SP20p = @s SPmax
scoreboard players operation @s SP20p /= $5 const

scoreboard players operation @s SP50p = @s SPmax
scoreboard players operation @s SP50p /= $2 const

scoreboard players operation @s SP150p = @s SPmax
scoreboard players operation @s SP150p += @s SP50p

scoreboard players operation @s SP200p = @s SPmax
scoreboard players operation @s SP200p += @s SPmax

