# 命名：フロッグボルト
# 説明：
# >/function neofunction:entity/skill/frog_bolt_tick
# =/function neofunction:entity/skill/frog_bolt_attack

playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 10 2
particle minecraft:wax_off ~ ~ ~ 0.2 4 0.2 1 200
execute as @a[distance=..2] run damage @s 10 lightning_bolt by @e[tag=frogshaman,limit=1]
effect give @a[distance=..2] levitation 3 200


kill @s