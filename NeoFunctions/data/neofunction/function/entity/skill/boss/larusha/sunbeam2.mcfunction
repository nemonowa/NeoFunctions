# 命名：sunbeam2
# 説明：
# >/function neofunction:entity/skill/boss/larusha/sunbeam1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/sunbeam2

execute as @e[tag=sungolem] at @s positioned ~ ~2 ~ run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 30 force
execute as @e[tag=sungolem] at @s run playsound block.beacon.activate master @a ~ ~ ~ 2 1.5

