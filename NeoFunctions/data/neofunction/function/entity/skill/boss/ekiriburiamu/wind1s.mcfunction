# 命名：wind1s
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/1s
# =/function neofunction:entity/skill/boss/ekiriburiamu/wind1s

team join red @e[tag=ekiriArrowCheck]
execute on target at @s anchored eyes positioned ^ ^ ^ as @e[tag=ekiriArrowCheck] facing entity @s feet facing ^ ^ ^-1 run function neofunction:entity/skill/motion/custom_speed_straight {Speed:1}
execute if entity @e[tag=ekiriArrowCheck] positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.wind_charge.wind_burst hostile @s ~ ~ ~ 1 1.5
data modify entity @e[tag=ekiriArrowCheck,limit=1] PortalCooldown set value 40
tag @e[tag=ekiriArrowCheck] add portalcooldown
tag @e[tag=ekiriArrowCheck] remove ekiriArrow
tag @e[tag=ekiriArrowCheck] remove ekiriArrowCheck
execute unless entity @e[tag=ekiriArrow] run return 0
tag @e[tag=ekiriArrow,limit=1,sort=random] add ekiriArrowCheck
team join yellow @e[tag=ekiriArrowCheck]
data modify entity @e[tag=ekiriArrowCheck,limit=1] Glowing set value 1b
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.arrow.hit_player hostile @s ~ ~ ~ 1 0.5