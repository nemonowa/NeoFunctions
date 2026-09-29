# 命名：wateraec_tick
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/tick
# =/function neofunction:entity/skill/boss/ekiriburiamu/wateraec_tick

particle splash ~ ~ ~ 0.1 3 0.1 1 10
execute unless data entity @s {Age:99} run return 0
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.player.splash.high_speed hostile @s ~ ~ ~ 1 0.5
particle splash ~ ~ ~ 1 3 1 1 400
execute positioned ~-3 ~-10 ~-3 as @a[dx=6,dy=40,dz=6] run damage @s 15 arrow by @e[tag=ekiriburiamu,limit=1]
kill @s