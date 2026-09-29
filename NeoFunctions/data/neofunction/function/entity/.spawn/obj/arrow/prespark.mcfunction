# 命名：startlightning
# 説明：NBT変更してから削除
# 説明：CustomModelData:1676を所持する矢
# >/function neofunction:entity/.spawn/arrow/.main
# =/function neofunction:entity/.spawn/obj/arrow/prespark


#内容
data merge entity @s {Glowing:1b}
particle minecraft:electric_spark ~ ~ ~ 0.3 1 1 1 100
stopsound @a[distance=..16] ambient minecraft:entity.lightning_bolt.thunder
stopsound @a[distance=..16] ambient minecraft:entity.lightning_bolt.impact
playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..16] ~ ~ ~ 1 1
