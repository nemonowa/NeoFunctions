# 命名：whip_ray
# 説明：鞭の線を 0.8 ずつ伸ばす。予告のときは黒い粉、打つときは黒い水しぶきと、線の近く（1.3 マス）の人に 8 ダメージ
# 実行条件：実行位置と向き 線の先
# >/function neofunction:entity/skill/boss/rubra_keeper/whip_ray_start
# =/function neofunction:entity/skill/boss/rubra_keeper/whip_ray

# 内容
execute if score #rk_hit temp matches 0 run particle minecraft:dust{color:[0.1,0.1,0.15],scale:1.2} ~ ~ ~ 0.1 0 0.1 0 1 force @a[distance=..48]
execute if score #rk_hit temp matches 1 run particle minecraft:squid_ink ~ ~0.3 ~ 0.2 0.2 0.2 0.02 3 normal
execute if score #rk_hit temp matches 1 as @a[distance=..1.3,gamemode=!spectator] run damage @s 8 minecraft:mob_attack by @e[type=iron_golem,tag=rubra_keeper,limit=1]
scoreboard players remove #rk_ray temp 1
execute if score #rk_ray temp matches 1.. positioned ^ ^ ^0.8 run function neofunction:entity/skill/boss/rubra_keeper/whip_ray
