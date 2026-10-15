# 命名：slam_wait
# 説明：のしかかりの予告のあいだ（毎 tick）：真下の床に半径 4 の赤い輪。数え終わったら落ちる（速さ 2）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/slam_wait

# 内容
execute positioned ~ -39.8 ~ rotated 0 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 30 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 60 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 90 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 120 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 150 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 180 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 210 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 240 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 270 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 300 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ rotated 330 0 positioned ^ ^ ^4 run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.6} ~ ~ ~ 0.1 0 0.1 0 2 force @a[distance=..64]
execute positioned ~ -39.8 ~ run particle minecraft:dust{color:[1.0,0.1,0.1],scale:1.2} ~ ~ ~ 2 0 2 0 6 force @a[distance=..64]
execute store result score #rubra_t temp run data get storage neofunction:rubra worm.t
scoreboard players remove #rubra_t temp 1
execute store result storage neofunction:rubra worm.t int 1 run scoreboard players get #rubra_t temp
execute if score #rubra_t temp matches ..0 run data modify storage neofunction:rubra worm.state set value "s_down"
execute if score #rubra_t temp matches ..0 run data modify storage neofunction:rubra worm.next.y set value "-41.0"
execute if score #rubra_t temp matches ..0 run data modify storage neofunction:rubra worm.next.s set value "2.0"
execute if score #rubra_t temp matches ..0 run function neofunction:entity/skill/boss/rubra_worm/slam_goal with storage neofunction:rubra worm.next
