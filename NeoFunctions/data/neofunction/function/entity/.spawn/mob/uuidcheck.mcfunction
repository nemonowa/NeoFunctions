# 命名：uuidcheck
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/mob
# =/function neofunction:entity/.spawn/mob/uuidcheck

# 進捗検知用 UUID[0]の2進展開(符号付表現)
execute store result score #Calc temp run data get entity @s UUID[0]
scoreboard players set #Calc1 temp 1073741824
execute if score #Calc temp matches ..-1 run tag @s add UUID-
execute unless score #Calc temp matches ..-1 run tag @s add notUUID-
execute if score #Calc temp matches ..-1 run scoreboard players operation #Calc temp *= $-1 const

function neofunction:asset/nbt/for {Function:"neofunction:entity/.spawn/mob/uuid_macro",List:[30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]}
tag @s add UUIDchecked