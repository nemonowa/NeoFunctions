# 命名：nether_star
# 説明：
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/nether_star

data merge entity @s {NoGravity:1b,Glowing:1b,Invulnerable:1b,Tags:[attract]}
execute if entity @a[distance=..8] run playsound minecraft:entity.illusioner.prepare_mirror record @a[distance=..8] ~ ~ ~ 1 1.3
