# 命名：explosion2
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/explosion2

particle explosion_emitter ~ ~ ~ 3 0 3 1 30
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1
execute as @a[distance=..10] run damage @s 20 explosion by @e[tag=ekiriburiamu,limit=1]