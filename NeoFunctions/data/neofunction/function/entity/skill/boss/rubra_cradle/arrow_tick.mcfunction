# 命名：arrow_tick
# 説明：【追加：2026-10-09 ルブラ編】赤い光の矢（毎 tick）：セレンの胸から狙いへ予告の線を見せ、数え終わったら線の上を射抜く（当たると 7 ダメージ）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/arrow_tick

# 内容
execute store result score #rc_a temp run data get storage neofunction:rubra cradle.arrow
scoreboard players remove #rc_a temp 1
execute store result storage neofunction:rubra cradle.arrow int 1 run scoreboard players get #rc_a temp
scoreboard players operation #rc_m temp = #rc_a temp
scoreboard players operation #rc_m temp %= $2 const
scoreboard players set #rc_hit temp 0
execute if score #rc_a temp matches 1.. if score #rc_m temp matches 0 positioned ~ ~1.6 ~ facing entity @e[type=marker,tag=rubra_arrow_t,limit=1] feet run function neofunction:entity/skill/boss/rubra_cradle/arrow_ray_start
execute if score #rc_a temp matches 0 run scoreboard players set #rc_hit temp 1
execute if score #rc_a temp matches 0 positioned ~ ~1.6 ~ facing entity @e[type=marker,tag=rubra_arrow_t,limit=1] feet run function neofunction:entity/skill/boss/rubra_cradle/arrow_ray_start
execute if score #rc_a temp matches 0 run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..40] ~ ~ ~ 1.5 1.6
execute if score #rc_a temp matches 0 run kill @e[type=marker,tag=rubra_arrow_t]
