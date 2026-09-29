# 命名：mandoragoraaaa
# 説明：5s
# >
# =/function neofunction:system/adv/location/ceresta/mandoragoraaaa



# 説明：
#クリエと狩猟許可が無ければ戻り値を返す
execute if entity @s[gamemode=creative] run return 0
execute if entity @s[tag=argonaute] run return 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:119b}]}] run return 1

title @s actionbar [{"text":"私有地：マンドラゴアの狩猟許可が必要！","color":"red","bold":true}]

damage @s 1 minecraft:out_of_world
effect give @s blindness 3 0 false
function neofunction:system/pos/.macro with storage pos:119

#
execute as @s at @s run particle sweep_attack ^0 ^0 ^0 1.5 22 1.5 0 99 force
execute as @s at @s run particle end_rod ^0 ^0 ^0 2 4 2 0 9 force
execute as @s at @s run particle dripping_water ^0 ^0 ^0 3 6 3 0 9 force
execute as @s at @s run particle ash ^0 ^0 ^0 4 6 4 0 11 force

#
playsound minecraft:entity.ghast.hurt record @a ~ ~ ~ 10 1.6 1
playsound minecraft:entity.ghast.hurt record @a ~ ~ ~ 10 0.3 1
playsound minecraft:entity.ghast.death record @a ~ ~ ~ 10 0.5 1