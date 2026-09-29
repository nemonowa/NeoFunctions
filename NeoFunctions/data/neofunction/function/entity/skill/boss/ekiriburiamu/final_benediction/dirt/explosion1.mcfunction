# 命名：explosion1
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/dirt/explosion1

particle explosion_emitter ~ ~ ~ 2 0 2 1 10
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1
execute as @a[distance=..8] run damage @s 20 explosion by @e[tag=ekiriburiamu,limit=1]