# 命名：attack
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/attack


execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.player.splash.high_speed hostile @s ~ ~ ~ 1 0.5
execute as @e[tag=ekiriFinalAEC] at @s run particle splash ~ ~ ~ 1 3 1 1 400
execute as @e[tag=ekiriFinalAEC] at @s positioned ~-4 ~-10 ~-4 as @a[dx=8,dy=40,dz=8] run damage @s 15 arrow by @e[tag=ekiriburiamu,limit=1]
kill @e[tag=ekiriFinalAEC]