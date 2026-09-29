# 命名：water_elemental
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/3s
# =/function neofunction:entity/skill/boss/ekiriburiamu/water_elemental

execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.evoker.cast_spell hostile @s ~ ~ ~ 1 2

execute on target facing entity @s eyes as @e[type=vex,nbt={DeathLootTable:"neofunction:asset/summon/664"},limit=1,sort=nearest] run function neofunction:entity/skill/motion/custom_speed_straight {Speed:2}
execute on target run function neofunction:entity/skill/line_to_me/crit