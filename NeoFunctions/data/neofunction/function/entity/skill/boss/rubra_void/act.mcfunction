# 命名：act
# 説明：【追加：2026-10-09 ルブラ編】技の予告と当たり（毎 tick）：a＝1 黒い水の柱、2 天墜、3 黒い雨、4 環状の衝撃波の溜め。0 になったら当てる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/act

# 内容
execute store result score #rv_c temp run data get storage neofunction:rubra fin.c
scoreboard players remove #rv_c temp 1
execute store result storage neofunction:rubra fin.c int 1 run scoreboard players get #rv_c temp
execute store result score #rv_a temp run data get storage neofunction:rubra fin.a
execute if score #rv_c temp matches 1.. if score #rv_a temp matches 1 as @e[type=marker,tag=rubra_fin_mark] at @s run particle minecraft:dust{color:[0.1,0.1,0.15],scale:1.6} ~ ~0.2 ~ 1.4 0 1.4 0 8 force @a[distance=..128]
execute if score #rv_c temp matches 1.. if score #rv_a temp matches 2 as @e[type=marker,tag=rubra_fin_mark] at @s run particle minecraft:dust{color:[1.0,0.2,0.15],scale:1.6} ~ ~0.2 ~ 1.4 0 1.4 0 8 force @a[distance=..128]
execute if score #rv_c temp matches 1..15 if score #rv_a temp matches 2 as @e[type=marker,tag=rubra_fin_mark] at @s run particle minecraft:flame ~ ~12 ~ 0.2 6 0.2 0 10 force @a[distance=..128]
execute if score #rv_c temp matches 1.. if score #rv_a temp matches 3 as @e[type=marker,tag=rubra_fin_mark] at @s run particle minecraft:dust{color:[0.25,0.2,0.35],scale:1.2} ~ ~0.2 ~ 1 0 1 0 5 force @a[distance=..128]
execute if score #rv_c temp matches 1.. if score #rv_a temp matches 3 as @e[type=marker,tag=rubra_fin_mark] at @s run particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~8 ~ 0.5 2 0.5 0 2 force @a[distance=..128]
execute if score #rv_c temp matches 1.. if score #rv_a temp matches 4 as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run particle minecraft:dust{color:[1.0,0.4,0.3],scale:2.0} ~ ~0.3 ~ 2 0 2 0 20 force @a[distance=..128]
execute if score #rv_c temp matches 0 if score #rv_a temp matches 1 as @e[type=marker,tag=rubra_fin_mark] at @s run function neofunction:entity/skill/boss/rubra_void/pillar_hit
execute if score #rv_c temp matches 0 if score #rv_a temp matches 2 as @e[type=marker,tag=rubra_fin_mark] at @s run function neofunction:entity/skill/boss/rubra_void/meteor_hit
execute if score #rv_c temp matches 0 if score #rv_a temp matches 3 as @e[type=marker,tag=rubra_fin_mark] at @s run function neofunction:entity/skill/boss/rubra_void/rain_hit
execute if score #rv_c temp matches 0 if score #rv_a temp matches 4 run data modify storage neofunction:rubra fin.rw set value 32
# 黒い弾の輪（a＝5）：二重の輪を 3 回
execute if score #rv_a temp matches 5 if score #rv_c temp matches 30 positioned 921.5 200.8 3282.5 run function neofunction:entity/skill/boss/rubra_void/blt_ring_a
execute if score #rv_a temp matches 5 if score #rv_c temp matches 20 positioned 921.5 200.8 3282.5 run function neofunction:entity/skill/boss/rubra_void/blt_ring_b
execute if score #rv_a temp matches 5 if score #rv_c temp matches 5 positioned 921.5 200.8 3282.5 run function neofunction:entity/skill/boss/rubra_void/blt_ring_a
execute if score #rv_a temp matches 5 if score #rv_c temp matches 31.. as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run particle minecraft:dust{color:[0.4,0.1,0.6],scale:2.0} ~ ~1 ~ 1 0.5 1 0 10 force @a[distance=..96]
# 渦の弾幕（a＝6）：3 tick ごとに 3 方向
scoreboard players operation #rv_m temp = #rv_c temp
scoreboard players operation #rv_m temp %= $3 const
execute if score #rv_a temp matches 6 if score #rv_m temp matches 0 run function neofunction:entity/skill/boss/rubra_void/blt_spiral
# 狙い撃ちの扇（a＝7）：10 tick ごとに 3 回
execute if score #rv_a temp matches 7 if score #rv_c temp matches 20 positioned 921.5 200.8 3282.5 facing entity @r[distance=..96,gamemode=!spectator] feet rotated ~ 0 run function neofunction:entity/skill/boss/rubra_void/blt_fan
execute if score #rv_a temp matches 7 if score #rv_c temp matches 10 positioned 921.5 200.8 3282.5 facing entity @r[distance=..96,gamemode=!spectator] feet rotated ~ 0 run function neofunction:entity/skill/boss/rubra_void/blt_fan
execute if score #rv_a temp matches 7 if score #rv_c temp matches 0 positioned 921.5 200.8 3282.5 facing entity @r[distance=..96,gamemode=!spectator] feet rotated ~ 0 run function neofunction:entity/skill/boss/rubra_void/blt_fan
# 床を薙ぐ光線（a＝8）：90〜61 予告、60〜1 薙ぐ（毎 tick 3 度）
execute if score #rv_a temp matches 8 run function neofunction:entity/skill/boss/rubra_void/beam_tick
execute if score #rv_c temp matches 0 run kill @e[type=marker,tag=rubra_fin_mark]
