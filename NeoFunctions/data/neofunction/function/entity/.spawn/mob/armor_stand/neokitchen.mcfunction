# 命名：neokitchen
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/neokitchen



# 内容
# setblock ~ ~ ~ crafting_table
setblock ~ ~ ~ air
execute positioned ~ ~-1.45 ~ run function neofunction:asset/summon/12
