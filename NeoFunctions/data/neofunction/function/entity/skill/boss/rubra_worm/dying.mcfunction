# 命名：dying
# 説明：【追加：2026-10-08 ルブラ編】崩れていく（毎 tick）：3 tick ごとにしっぽの節から 1 つずつ黒い砂になる。最後に頭が崩れて星の血晶（1905）を落とし、416 へ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/dying

# 内容
execute store result score #rubra_d temp run data get storage neofunction:rubra worm.d
scoreboard players add #rubra_d temp 1
execute store result storage neofunction:rubra worm.d int 1 run scoreboard players get #rubra_d temp
execute if score #rubra_d temp matches 3 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:12}
execute if score #rubra_d temp matches 6 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:11}
execute if score #rubra_d temp matches 9 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:10}
execute if score #rubra_d temp matches 12 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:9}
execute if score #rubra_d temp matches 15 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:8}
execute if score #rubra_d temp matches 18 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:7}
execute if score #rubra_d temp matches 21 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:6}
execute if score #rubra_d temp matches 24 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:5}
execute if score #rubra_d temp matches 27 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:4}
execute if score #rubra_d temp matches 30 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:3}
execute if score #rubra_d temp matches 33 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:2}
execute if score #rubra_d temp matches 36 run function neofunction:entity/skill/boss/rubra_worm/crumble {i:1}
execute if score #rubra_d temp matches 45.. run function neofunction:entity/skill/boss/rubra_worm/dead
