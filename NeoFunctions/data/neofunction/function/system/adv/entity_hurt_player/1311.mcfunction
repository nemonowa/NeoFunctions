# 命名：1311
# 説明：dirtshieldplayer装備で殴られた時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/entity_hurt_player/1311



## 内容

## 内容
#効果音とか
execute as @s if entity @s[ nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] run playsound minecraft:block.glass.break record @a[distance=..8] ~ ~ ~ 0.5 0.5 0.01
execute as @s if entity @s[ nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] run playsound block.beacon.deactivate record @a[distance=..8] ~ ~ ~ 0.5 0.5 0.01

execute as @s if entity @s[ nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] run effect clear @s minecraft:glowing
execute as @s if entity @s[ nbt={active_effects:[{id:"minecraft:resistance",amplifier:1b}]}] run effect clear @s minecraft:resistance

tag @s remove dirtshieldplayer