# 命名：.cheater
# 説明：処刑用処理
# 説明：ねも「もう終わりだ猫の世界」
# 実行条件：チートの使用が確実に認められたとき
# >
# =/function neofunction:player/cheat/.cheater



# 内容
tag @s add cheater
team join red @s
scoreboard players set §4不正観測済世界線:CHEATED world -9999
#scoreboard players reset §4不正観測済世界線:CHEATED world -9999
scoreboard objectives setdisplay sidebar world

function neofunction:system/worldborder/.neo