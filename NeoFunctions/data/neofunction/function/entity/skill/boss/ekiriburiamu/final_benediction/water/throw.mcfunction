# 命名：throw
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/throw

execute unless entity @e[tag=ekirielemental,limit=1,sort=nearest,distance=..64] run return 0
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.evoker.cast_spell hostile @s ~ ~ ~ 1 2

execute as @e[tag=ekirielemental,limit=1,sort=nearest,distance=..64] at @s facing entity @p feet run function neofunction:entity/skill/motion/custom_speed_straight {Speed:2}
execute as @e[tag=ekirielemental,limit=1,sort=nearest,distance=..64] at @s at @p run function neofunction:entity/skill/line_to_me/crit
scoreboard players set @s generaltimer 351