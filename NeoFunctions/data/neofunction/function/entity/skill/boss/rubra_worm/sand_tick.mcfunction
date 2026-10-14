# 命名：sand_tick
# 説明：【追加：2026-10-14 ルブラ編】砂の弾 1 つ（毎 tick）：前へ 0.7。人に当たると 5 と少しの目くらまし。固いブロックや床の下、本体から遠く（48）で消える
# 実行条件：実行者・実行位置 砂の弾
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/sand_tick

# 内容
tp @s ^ ^ ^0.7
particle minecraft:falling_dust{block_state:"minecraft:red_sand"} ~ ~ ~ 0.1 0.1 0.1 0 2 normal
execute if entity @a[distance=..1.1,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_worm/sand_hit
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ #minecraft:candles run return run kill @s
execute store result score #rw_y temp run data get entity @s Pos[1]
execute if score #rw_y temp matches ..-42 run return run kill @s
execute unless entity @e[type=ravager,tag=rubra_worm,distance=..48] run kill @s
