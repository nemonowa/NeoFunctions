# 命名：arrow_ray
# 説明：矢の線を 0.7 ずつ伸ばす。予告のときは細い赤い粉、射抜くときは太い赤い光と、線の近く（1.2 マス）の人に 7 ダメージ。壁に当たると止まる
# 実行条件：実行位置と向き 線の先
# >/function neofunction:entity/skill/boss/rubra_cradle/arrow_ray_start
# =/function neofunction:entity/skill/boss/rubra_cradle/arrow_ray

# 内容
execute if score #rc_hit temp matches 0 run particle minecraft:dust{color:[1.0,0.2,0.2],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute if score #rc_hit temp matches 1 run particle minecraft:dust{color:[1.0,0.15,0.1],scale:1.8} ~ ~ ~ 0.05 0.05 0.05 0 3 force @a[distance=..48]
execute if score #rc_hit temp matches 1 as @a[distance=..1.2,gamemode=!spectator] run damage @s 7 minecraft:magic by @e[type=evoker,tag=rubra_eater,limit=1]
scoreboard players remove #rc_ray temp 1
execute if score #rc_ray temp matches 1.. positioned ^ ^ ^0.7 if block ~ ~ ~ #minecraft:air run function neofunction:entity/skill/boss/rubra_cradle/arrow_ray
