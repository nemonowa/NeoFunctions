# 命名：uuid0
# 説明：forによってUUID[0]の値をタグの2進数に変換する
# >/function neofunction:entity/.spawn/mob/uuidcheck
# =/function neofunction:entity/.spawn/mob/uuid_macro

$execute if score #Calc temp >= #Calc1 temp run tag @s add UUID$(i)
$execute unless score #Calc temp >= #Calc1 temp run tag @s add notUUID$(i)
execute if score #Calc temp >= #Calc1 temp run scoreboard players operation #Calc temp -= #Calc1 temp
scoreboard players operation #Calc1 temp /= $2 const