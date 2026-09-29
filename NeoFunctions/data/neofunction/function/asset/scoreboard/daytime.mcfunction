# 命名：daytime
# 説明：マイクラ内時間0~24000を0:00~24:00に変換
# >/function neofunction:system/adv/tick/cmd/996
# =/function neofunction:asset/scoreboard/daytime


execute as @s store result score day temp run time of minecraft:overworld query minecraft:day repetition
execute as @s store result score daytime temp run time of minecraft:overworld query minecraft:day

scoreboard players operation minute temp = $100 const
scoreboard players operation minute temp *= $60 const
scoreboard players operation daytime temp += minute temp

#ここを追加：24000超え分を丸め込む
scoreboard players operation daytime temp %= $24000 const

scoreboard players operation minute temp = daytime temp
scoreboard players operation daytime temp /= $1000 const
scoreboard players operation minute temp %= $1000 const
scoreboard players operation minute temp *= $60 const
scoreboard players operation minute temp /= $1000 const


title @s actionbar [{"text":"経過日数 ","color":"dark_aqua"},{"score":{"name":"day","objective":"temp"},"bold":true},{"text":" 現在時刻 "},{"score":{"name":"daytime","objective":"temp"},"bold":true},{"text":":"},{"score":{"name":"minute","objective":"temp"},"bold":true}]

