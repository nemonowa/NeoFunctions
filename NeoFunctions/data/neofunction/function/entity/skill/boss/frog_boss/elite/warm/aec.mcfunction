# 命名：aec
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/warm/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/warm/aec

playsound entity.splash_potion.break hostile @a[distance=..32] ~ ~ ~ 100 0.5

summon area_effect_cloud ~ ~ ~ {Duration:200,Radius:3f,custom_particle:{type:"minecraft:end_rod"},potion_contents:{custom_effects:[{id:"slowness",amplifier:2b,duration:60}]}}
kill @s