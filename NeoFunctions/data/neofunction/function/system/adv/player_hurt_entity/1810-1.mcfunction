# 命名：1810-1
# 説明：
# >/function neofunction:system/adv/player_hurt_entity/1810
# =/function neofunction:system/adv/player_hurt_entity/1810-1

execute on attacker unless entity @s[tag=attacker] run return 0

tag @s add hit
execute as @e[distance=..4,tag=enemy] at @s facing entity @e[tag=hit,limit=1,sort=nearest] feet rotated ~ ~60 run function neofunction:entity/skill/motion/custom_speed_straight {Speed:-0.7}
tag @s remove hit
execute as @e[distance=..4,tag=enemy] run damage @s 4 lightning_bolt by @a[tag=attacker,limit=1,sort=nearest]
damage @s 30 lightning_bolt by @a[tag=attacker,limit=1,sort=nearest]
function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/prediction
particle minecraft:wax_off ~ ~ ~ 0.2 6 0.2 1 200
playsound item.trident.thunder master @a ~ ~ ~ 2 1
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 1
