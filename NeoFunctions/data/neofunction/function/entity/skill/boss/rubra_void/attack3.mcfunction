# 命名：attack3
# 説明：【追加：2026-10-13 ルブラ編】技を選ぶ（第 3 形態）：零点崩壊（3 回に 1 回）・天墜・黒い雨・渦の弾幕・床を薙ぐ光線・二重の弾の輪・黒い水の柱
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack
# =/function neofunction:entity/skill/boss/rubra_void/attack3

# 内容
execute store result score #rv_pn temp run data get storage neofunction:rubra fin.pn
scoreboard players add #rv_pn temp 1
execute if score #rv_pn temp matches 3.. run scoreboard players set #rv_pn temp 0
execute store result storage neofunction:rubra fin.pn int 1 run scoreboard players get #rv_pn temp
# 【変更：2026-10-15】零点崩壊（引き寄せ）はやめた（ユーザーの判断：外側では効かずダメージもなく、わかりにくい）。下の 1 行を外した
# execute if score #rv_pn temp matches 0 run return run function neofunction:entity/skill/boss/rubra_void/pull_start
execute store result score #rv_r temp run random value 1..6
execute if score #rv_r temp matches 1 run return run function neofunction:entity/skill/boss/rubra_void/meteor_start
execute if score #rv_r temp matches 2 run return run function neofunction:entity/skill/boss/rubra_void/rain_start
execute if score #rv_r temp matches 3 run return run data modify storage neofunction:rubra fin merge value {a:6,c:60}
execute if score #rv_r temp matches 4 run return run function neofunction:entity/skill/boss/rubra_void/beam_start
execute if score #rv_r temp matches 5 run return run data modify storage neofunction:rubra fin merge value {a:5,c:40}
function neofunction:entity/skill/boss/rubra_void/pillar_start
