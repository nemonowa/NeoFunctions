# 命名：quake_tick
# 説明：【追加：2026-10-14 ルブラ編】地響きの輪（毎 tick）：半径を 0.6 ずつ広げ（q は 10 倍の値）、輪の上の地面に立っている人に 6（一人一度）。半径 10 で終わる
# 実行条件：実行者・実行位置 地響きの目印（marker、タグ rubra_wquake、床の高さ）
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/quake_tick

# 内容
execute store result score #rw_q temp run data get storage neofunction:rubra worm.q
scoreboard players add #rw_q temp 6
execute store result storage neofunction:rubra worm.q int 1 run scoreboard players get #rw_q temp
execute if score #rw_q temp matches 100.. run return run kill @s
execute store result storage neofunction:rubra worm_m.r float 0.1 run scoreboard players get #rw_q temp
scoreboard players remove #rw_q temp 8
execute store result storage neofunction:rubra worm_m.ri float 0.1 run scoreboard players get #rw_q temp
scoreboard players add #rw_q temp 16
execute store result storage neofunction:rubra worm_m.ro float 0.1 run scoreboard players get #rw_q temp
function neofunction:entity/skill/boss/rubra_worm/quake_ring with storage neofunction:rubra worm_m
