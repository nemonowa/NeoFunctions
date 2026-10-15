# 命名：whip_tick
# 説明：黒い水の鞭（毎 tick）：予告の線を見せ、数え終わったら線の上を打つ（当たると 8 ダメージ）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/whip_tick

# 内容
execute store result score #rk_wh temp run data get storage neofunction:rubra keeper.whipt
scoreboard players remove #rk_wh temp 1
execute store result storage neofunction:rubra keeper.whipt int 1 run scoreboard players get #rk_wh temp
# 予告（2 tick ごと）
scoreboard players operation #rk_m temp = #rk_wh temp
scoreboard players operation #rk_m temp %= $2 const
scoreboard players set #rk_hit temp 0
execute if score #rk_wh temp matches 1.. if score #rk_m temp matches 0 positioned ~ ~0.2 ~ facing entity @e[type=marker,tag=rubra_whip_t,limit=1] feet rotated ~ 0 run function neofunction:entity/skill/boss/rubra_keeper/whip_ray_start
# 打つ
execute if score #rk_wh temp matches 0 run scoreboard players set #rk_hit temp 1
execute if score #rk_wh temp matches 0 positioned ~ ~0.2 ~ facing entity @e[type=marker,tag=rubra_whip_t,limit=1] feet rotated ~ 0 run function neofunction:entity/skill/boss/rubra_keeper/whip_ray_start
execute if score #rk_wh temp matches 0 run playsound minecraft:entity.player.splash.high_speed hostile @a[distance=..48] ~ ~ ~ 2 0.5
execute if score #rk_wh temp matches 0 run kill @e[type=marker,tag=rubra_whip_t]
