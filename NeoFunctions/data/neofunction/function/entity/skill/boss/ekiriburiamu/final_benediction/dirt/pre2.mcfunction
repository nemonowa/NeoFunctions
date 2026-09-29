# 命名：pre2
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/pre2

summon area_effect_cloud ~ ~2 ~ {custom_particle:{type:"minecraft:angry_villager"},Radius:0.01f,Duration:40}
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.evoker.cast_spell hostile @s ~ ~ ~ 1 0.5