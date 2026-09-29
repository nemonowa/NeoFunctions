# 命名：pattern_select
# 説明：雷撃フェーズ開始時にパターンを1つランダム抽選して呼び出す（エリート版：全14パターン対応・各パターンにエリート連撃強化入り）
# >/function neofunction:entity/skill/boss/frog_boss/elite/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern_select

execute store result score @s temp run random value 1..14

execute if score @s temp matches 1 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern1_double_helix
execute if score @s temp matches 1 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン1: 双螺旋豪雷（4連撃） を実行","color":"white"}]
execute if score @s temp matches 2 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern2_spiral_implosion
execute if score @s temp matches 2 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン2: 螺旋収束灼滅（3連撃） を実行","color":"white"}]
execute if score @s temp matches 3 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern3_cross
execute if score @s temp matches 3 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン3: クロス（十字・4連撃） を実行","color":"white"}]
execute if score @s temp matches 4 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern4_xshape
execute if score @s temp matches 4 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン4: X字（斜めクロス・4連撃） を実行","color":"white"}]
execute if score @s temp matches 5 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern5_sunburst
execute if score @s temp matches 5 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン5: 放射状（サンバースト・4連撃） を実行","color":"white"}]
execute if score @s temp matches 6 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern6_rings
execute if score @s temp matches 6 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン6: 同心円（リング・4連撃） を実行","color":"white"}]
execute if score @s temp matches 7 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern7_fan
execute if score @s temp matches 7 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン7: 扇状（ワイドショット・4連撃） を実行","color":"white"}]
execute if score @s temp matches 8 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern8_linewave
execute if score @s temp matches 8 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン8: 線列（ラインウェーブ・強化連撃） を実行","color":"white"}]
execute if score @s temp matches 9 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern9_grid
execute if score @s temp matches 9 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン9: 格子（グリッド・強化連撃） を実行","color":"white"}]
execute if score @s temp matches 10 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern10_cross_rotate
execute if score @s temp matches 10 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン10: 十字回転雷（強化連撃） を実行","color":"white"}]
execute if score @s temp matches 11 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern11_x_rotate
execute if score @s temp matches 11 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン11: X字回転雷（強化連撃） を実行","color":"white"}]
execute if score @s temp matches 12 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern12_spiral
execute if score @s temp matches 12 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン12: 螺旋雷（強化連撃） を実行","color":"white"}]
execute if score @s temp matches 13 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern13_ring_converge
execute if score @s temp matches 13 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン13: 円環収束（3連撃） を実行","color":"white"}]
execute if score @s temp matches 14 run function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern14_ring_diffuse
execute if score @s temp matches 14 run tellraw @a[gamemode=creative] [{"text":"[FrogBoss/Elite] ","color":"gold"},{"text":"パターン14: 円環拡散（3連撃） を実行","color":"white"}]

execute if entity @s[tag=FrogBossHalf] as @e[tag=AttackPoint,tag=!check] at @s run tp @s ~ ~2 ~
