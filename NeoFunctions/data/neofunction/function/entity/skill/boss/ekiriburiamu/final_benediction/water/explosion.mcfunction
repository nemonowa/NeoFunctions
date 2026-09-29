# 命名：explosion
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/explosion

summon area_effect_cloud ~ ~1 ~ {Tags:["ekiriFinalAEC"],custom_particle:{type:"minecraft:rain"},Duration:400,Radius:4f,potion_contents:{custom_effects:[{id:"slowness",amplifier:3b,duration:20}]}}
execute positioned 1029 7 1765 run playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 2
kill @s