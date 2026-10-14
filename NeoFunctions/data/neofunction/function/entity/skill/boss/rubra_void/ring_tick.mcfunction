# 命名：ring_tick
# 説明：【追加：2026-10-09 ルブラ編】環状の衝撃波（毎 tick、rw を 32 から数え下ろす）：半径 32−rw の輪を広げ、輪の上で地面に立っている人に 7 ダメージ（一人一度）
# 説明：【変更：2026-10-13】変数入りの関数には、必要な値だけの小さな記録（storage neofunction:rubra fin_m）を渡す（fin を丸ごと渡すと、毎 tick とても重くなった）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/ring_tick

# 内容
execute store result score #rv_rw temp run data get storage neofunction:rubra fin.rw
execute if score #rv_rw temp matches 1.. run scoreboard players remove #rv_rw temp 1
execute store result storage neofunction:rubra fin.rw int 1 run scoreboard players get #rv_rw temp
scoreboard players set #rv_rr temp 32
scoreboard players operation #rv_rr temp -= #rv_rw temp
execute store result storage neofunction:rubra fin_m.rr int 1 run scoreboard players get #rv_rr temp
execute as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/ring_wave with storage neofunction:rubra fin_m
execute if score #rv_rw temp matches 0 run tag @a remove rubra_ringhit
