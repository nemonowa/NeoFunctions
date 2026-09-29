# 命名：fireaec
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/10s
# =/function neofunction:entity/skill/boss/ekiriburiamu/fireaec

summon area_effect_cloud ~ ~1 ~ {Radius:0.51f,RadiusPerTick:0.225f,Duration:40,custom_particle:{type:"minecraft:flame"},Tags:["ekiriFireAEC"]}
execute positioned 1029 7 1765 run playsound item.firecharge.use hostile @a[distance=..32] ~ ~ ~ 100 0.5
effect give @s slowness 2 10 true