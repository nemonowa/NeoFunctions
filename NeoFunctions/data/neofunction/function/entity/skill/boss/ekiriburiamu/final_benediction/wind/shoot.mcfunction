# 命名：shoot
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/shoot

execute as @e[tag=ekiriFinalArrowCheck] at @s positioned as @p positioned ~ 18 ~ facing entity @s feet facing ^ ^ ^-1 run function neofunction:entity/skill/motion/custom_speed_straight {Speed:1}
data modify entity @e[tag=ekiriFinalArrowCheck,limit=1] PortalCooldown set value 40
team join red @e[tag=ekiriFinalArrowCheck]
tag @e[tag=ekiriFinalArrowCheck] add portalcooldown
tag @e[tag=ekiriFinalArrowCheck] remove ekiriFinalArrow
tag @e[tag=ekiriFinalArrowCheck] remove ekiriFinalArrowCheck
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.wind_charge.wind_burst hostile @s ~ ~ ~ 1 1.5

execute if entity @e[tag=ekiriFinalArrow] run scoreboard players set @s generaltimer 480