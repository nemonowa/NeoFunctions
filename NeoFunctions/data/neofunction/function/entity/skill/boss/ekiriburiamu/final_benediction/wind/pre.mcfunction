# 命名：pre
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/pre

tag @e[tag=ekiriFinalArrow,limit=1,sort=random] add ekiriFinalArrowCheck
data modify entity @e[tag=ekiriFinalArrowCheck,limit=1] Glowing set value 1b
team join yellow @e[tag=ekiriFinalArrowCheck]
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.arrow.hit_player hostile @s ~ ~ ~ 1 0.5