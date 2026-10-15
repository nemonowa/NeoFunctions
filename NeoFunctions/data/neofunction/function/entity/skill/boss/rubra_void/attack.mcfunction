# 命名：attack
# 説明：技を選ぶ（第 1 形態）：零点崩壊（4 回に 1 回）・黒い水の柱・黒い雨・黒い弾の輪・狙い撃ちの扇・黒い滴り。第 2・第 3 形態はそれぞれ attack2・attack3
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/attack

# 内容
execute if data storage neofunction:rubra fin{form:2} run return run function neofunction:entity/skill/boss/rubra_void/attack2
execute if data storage neofunction:rubra fin{form:3} run return run function neofunction:entity/skill/boss/rubra_void/attack3
execute store result score #rv_pn temp run data get storage neofunction:rubra fin.pn
scoreboard players add #rv_pn temp 1
execute if score #rv_pn temp matches 4.. run scoreboard players set #rv_pn temp 0
execute store result storage neofunction:rubra fin.pn int 1 run scoreboard players get #rv_pn temp
# 下の 1 行を外した
# execute if score #rv_pn temp matches 0 run return run function neofunction:entity/skill/boss/rubra_void/pull_start
execute store result score #rv_r temp run random value 1..6
execute if score #rv_r temp matches 1 run return run function neofunction:entity/skill/boss/rubra_void/pillar_start
execute if score #rv_r temp matches 2 run return run function neofunction:entity/skill/boss/rubra_void/rain_start
execute if score #rv_r temp matches 3 run return run data modify storage neofunction:rubra fin merge value {a:5,c:40}
execute if score #rv_r temp matches 4 run return run data modify storage neofunction:rubra fin merge value {a:7,c:31}
execute if score #rv_r temp matches 5 run return run function neofunction:entity/skill/boss/rubra_void/drip
function neofunction:entity/skill/boss/rubra_void/rain_start
