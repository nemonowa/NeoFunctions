# 命名：転移用処理
# 説明：未開放エリアには転移できなくするため。
# 説明：@a[scores={teleport=1..}]
# 説明：# ここマクロで軽量化してもいいかも
# 説明：スコアをストレージに格納
# 説明：execute store result storage pos:prev id int 1 run scoreboard players get @s teleport
# >/trigger teleport >/function neofunction:asset/skill/4
# =/function neofunction:system/trigger/teleport


# テレポート
# function neofunction:system/pos/.macro with storage pos:2
# 座標を追跡
# function neofunction:system/pos/compass with storage pos:2



# 内容
execute store result storage pos:prev id int 1 run scoreboard players get @s teleport

execute as @s[scores={teleport=1}] run function neofunction:system/pos/.macro with storage pos:24

# execute as @s[scores={teleport=..-1}] run function neofunction:system/trigger/teleport/..-1
execute as @s[scores={teleport=2..}] run function neofunction:system/trigger/teleport/2.. with storage pos:prev

# SP消費
execute unless biome ~ ~ ~ neodimension:pointnemo run scoreboard players remove @s SP 100


# 引き直し
scoreboard players set @s teleport 0
scoreboard players reset @s teleport
advancement revoke @s only neofunction:tick/entity_scores/trigger/teleport
advancement revoke @s only neofunction:tick/entity_scores/trigger/tp

# say 古い処理です