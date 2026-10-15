# 命名：slam_start
# 説明：のしかかりの始まり（後半）：狙った人の足もとの真下へ地中を進む
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/plan
# =/function neofunction:entity/skill/boss/rubra_worm/slam_start

# 内容
data modify storage neofunction:rubra worm.state set value "under_s"
execute store result score #rw_ax temp run data get entity @s Pos[0]
execute store result score #rw_az temp run data get entity @s Pos[2]
execute as @a[distance=..64,gamemode=!spectator,sort=random,limit=1] run function neofunction:entity/skill/boss/rubra_worm/pick
execute store result storage neofunction:rubra worm.next.ax int 1 run scoreboard players get #rw_ax temp
execute store result storage neofunction:rubra worm.next.az int 1 run scoreboard players get #rw_az temp
data modify storage neofunction:rubra worm.next.y set value "-46.0"
data modify storage neofunction:rubra worm.next.s set value "1.1"
function neofunction:entity/skill/boss/rubra_worm/slam_goal with storage neofunction:rubra worm.next
