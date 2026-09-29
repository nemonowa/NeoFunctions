# 命名：show
# 説明：ボスバー表示ON
# 説明：tag=bossの個体が出現した際に呼び出す。HP/DEFスコアは呼び出し元で計算済みであること
# >/function neofunction:entity/1_spawn_check
# =/function neofunction:asset/bossbar/show


# ボスバー
bossbar set world visible false

# ボスバーなしなら何もしない
execute if entity @s[tag=nobossbar] run return 0

# ID(=UUID[0])でボスバー個別化
data modify storage neofunction:bossbar ID set from entity @s UUID[0]
function neofunction:asset/bossbar/add with storage neofunction:bossbar

# IDリストに追加
data modify storage neofunction:bossbar IDs append from storage neofunction:bossbar ID
execute unless data storage neofunction:bossbar For.Max run data modify storage neofunction:bossbar For.Max set value 0
execute store result score #Calc temp run data get storage neofunction:bossbar For.Max
scoreboard players add #Calc temp 1
execute store result storage neofunction:bossbar For.Max int 1 run scoreboard players get #Calc temp
