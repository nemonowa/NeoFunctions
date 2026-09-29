# 命名：aec
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/cold/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/cold/aec

playsound entity.splash_potion.break hostile @a[distance=..32] ~ ~ ~ 100 0.5

summon area_effect_cloud ~ ~ ~ {Duration:200,Radius:3f,custom_particle:{type:"minecraft:sneeze"},potion_contents:{custom_effects:[{id:"poison",amplifier:20b,duration:60}]}}
kill @s