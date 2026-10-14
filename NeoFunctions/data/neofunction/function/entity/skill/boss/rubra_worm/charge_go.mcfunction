# 命名：charge_go
# 説明：【追加：2026-10-14 ルブラ編】突進の始まり：空洞の縁（真ん中から 20）の 7 か所（縦穴のある真東を除く）のどれかの真下へ、地中を進む
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/plan
# =/function neofunction:entity/skill/boss/rubra_worm/charge_go

# 内容
data modify storage neofunction:rubra worm.state set value "under_c"
execute store result score #rw_r temp run random value 1..7
execute if score #rw_r temp matches 1 run data modify storage neofunction:rubra worm.goal set value {x:826.5d,y:-46.0d,z:3282.5d,s:1.0d}
execute if score #rw_r temp matches 2 run data modify storage neofunction:rubra worm.goal set value {x:812.5d,y:-46.0d,z:3288.5d,s:1.0d}
execute if score #rw_r temp matches 3 run data modify storage neofunction:rubra worm.goal set value {x:798.5d,y:-46.0d,z:3282.5d,s:1.0d}
execute if score #rw_r temp matches 4 run data modify storage neofunction:rubra worm.goal set value {x:792.5d,y:-46.0d,z:3268.5d,s:1.0d}
execute if score #rw_r temp matches 5 run data modify storage neofunction:rubra worm.goal set value {x:798.5d,y:-46.0d,z:3254.5d,s:1.0d}
execute if score #rw_r temp matches 6 run data modify storage neofunction:rubra worm.goal set value {x:812.5d,y:-46.0d,z:3248.5d,s:1.0d}
execute if score #rw_r temp matches 7 run data modify storage neofunction:rubra worm.goal set value {x:826.5d,y:-46.0d,z:3254.5d,s:1.0d}
