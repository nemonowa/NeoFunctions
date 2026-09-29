# 命名：pattern_select
# 説明：雷撃フェーズ開始時にパターンを1つランダム抽選して呼び出す
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select

execute store result score @s temp run random value 1..14

execute if score @s temp matches 1 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern1_double_helix
execute if score @s temp matches 2 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern2_spiral_implosion
execute if score @s temp matches 3 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern3_cross
execute if score @s temp matches 4 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern4_xshape
execute if score @s temp matches 5 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern5_sunburst
execute if score @s temp matches 6 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern6_rings
execute if score @s temp matches 7 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern7_fan
execute if score @s temp matches 8 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern8_linewave
execute if score @s temp matches 9 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern9_grid
execute if score @s temp matches 10 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern10_cross_rotate
execute if score @s temp matches 11 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern11_x_rotate
execute if score @s temp matches 12 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern12_spiral
execute if score @s temp matches 13 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern13_ring_converge
execute if score @s temp matches 14 run function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern14_ring_diffuse

execute if entity @s[tag=FrogBossHalf] as @e[tag=AttackPoint,tag=!check] at @s run tp @s ~ ~2 ~