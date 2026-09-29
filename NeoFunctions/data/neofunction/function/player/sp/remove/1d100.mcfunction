# 命名：1d100
# 説明：サンチェック
# >/function neofunction:asset/event/random
# >単体
# =/function neofunction:player/sp/remove/1d100


## 内容
execute as @a store result score @s karman run random value 1..100
scoreboard players operation @s SP -= @s karman

execute as @a run tellraw @a [{"selector":"@s","color":"red"},{"text":" 1d100 > "},{"score":{"name":"@s","objective":"karman"}},{"text":" (SAN-CHECK)"}]
