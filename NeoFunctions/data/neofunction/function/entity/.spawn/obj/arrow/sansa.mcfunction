# 命名：sansa
# 説明：NBT変更してから削除
# 説明：CustomModelData:1428の弓
# >/function neofunction:entity/.spawn/arrow/.neo
# =/function neofunction:entity/.spawn/obj/arrow/sansa


#内容
tag @s remove vanilla
tag @s add sansa
execute on origin at @s rotated ~ ~90 positioned ^ ^2 ^-2 run function neofunction:asset/particle/circle/1m5
execute on origin at @s run playsound minecraft:block.amethyst_block.fall player @a[distance=..8] ~ ~ ~ 1 0.8
data modify entity @s Motion[1] set value 0.25d
execute if entity @s run schedule function neofunction:entity/skill/sansa 5t append
