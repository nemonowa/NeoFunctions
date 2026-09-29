# 命名：wateraec
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/10s
# =/function neofunction:entity/skill/boss/ekiriburiamu/wateraec

execute on target at @s as @e[type=vex,nbt={DeathLootTable:"neofunction:asset/summon/664"},limit=1,sort=nearest] at @s positioned ~ 8 ~ run summon area_effect_cloud ~ ~ ~ {Radius:3f,Duration:100,custom_particle:{type:"minecraft:splash"},Tags:["ekiriWaterAEC"],potion_contents:{custom_effects:[{id:"slowness",amplifier:3b,duration:20}]}}
execute positioned 1029 7 1765 run playsound entity.player.splash.high_speed hostile @a[distance=..32] ~ ~ ~ 1 2
execute on target at @s run kill @e[type=vex,nbt={DeathLootTable:"neofunction:asset/summon/664"},limit=1,sort=nearest]