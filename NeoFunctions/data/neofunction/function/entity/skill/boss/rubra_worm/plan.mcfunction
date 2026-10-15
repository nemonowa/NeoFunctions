# 命名：plan
# 説明：次の技を選ぶ。前半は 3 回に 1 回が突進（charge_go）、ほかは突き上げ（plan_emerge）。後半（phase 2）は 4 回をめぐる：突進・連続突き上げ（3 回）・のしかかり（slam_start）・突き上げ。後半は速くなる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# >/function neofunction:entity/skill/boss/rubra_worm/spawn
# =/function neofunction:entity/skill/boss/rubra_worm/plan

# 内容
data modify storage neofunction:rubra worm.state set value "under"
# 速さ（前半 0.8・0.9、後半 1.0・1.1）。マクロで入れるので文字列
execute unless data storage neofunction:rubra worm{phase:2} run data modify storage neofunction:rubra worm.next merge value {spa:"0.8",spb:"0.9",spp:"0.9"}
execute if data storage neofunction:rubra worm{phase:2} run data modify storage neofunction:rubra worm.next merge value {spa:"1.0",spb:"1.1",spp:"1.1"}
# 連続突き上げの残り
execute store result score #rw_c temp run data get storage neofunction:rubra worm.combo
execute if score #rw_c temp matches 1.. run scoreboard players remove #rw_c temp 1
execute if score #rw_c temp matches 0.. run execute store result storage neofunction:rubra worm.combo int 1 run scoreboard players get #rw_c temp
execute if score #rw_c temp matches 1.. run return run function neofunction:entity/skill/boss/rubra_worm/plan_emerge
execute store result score #rw_n temp run data get storage neofunction:rubra worm.n
scoreboard players add #rw_n temp 1
execute store result storage neofunction:rubra worm.n int 1 run scoreboard players get #rw_n temp
# 前半
scoreboard players operation #rw_m temp = #rw_n temp
scoreboard players operation #rw_m temp %= $3 const
execute unless data storage neofunction:rubra worm{phase:2} if score #rw_m temp matches 0 run return run function neofunction:entity/skill/boss/rubra_worm/charge_go
execute unless data storage neofunction:rubra worm{phase:2} run return run function neofunction:entity/skill/boss/rubra_worm/plan_emerge
# 後半
scoreboard players operation #rw_m temp = #rw_n temp
scoreboard players operation #rw_m temp %= $4 const
execute if score #rw_m temp matches 0 run return run function neofunction:entity/skill/boss/rubra_worm/charge_go
execute if score #rw_m temp matches 1 run data modify storage neofunction:rubra worm.combo set value 3
execute if score #rw_m temp matches 2 run return run function neofunction:entity/skill/boss/rubra_worm/slam_start
function neofunction:entity/skill/boss/rubra_worm/plan_emerge
