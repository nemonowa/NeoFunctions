# 命名：form1
# 説明：【追加：2026-10-09 ルブラ編】第 1 形態「ヴォイド・ゼロ」：黒い膜のあいだは攻撃が通らない（耐性 V）。星灯の柱 8 本を灯すと膜が剥がれ、15 秒攻撃が通る。そのあと柱は消える
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/form1

# 内容
function neofunction:entity/skill/boss/rubra_void/pillars
execute if score #rv_lit temp matches 8 if data storage neofunction:rubra fin{win:0} run function neofunction:entity/skill/boss/rubra_void/shell_break
execute store result score #rv_win temp run data get storage neofunction:rubra fin.win
execute if score #rv_win temp matches 1.. run scoreboard players remove #rv_win temp 1
execute store result storage neofunction:rubra fin.win int 1 run scoreboard players get #rv_win temp
execute if score #rv_win temp matches 0 run effect give @s minecraft:resistance 2 4 true
execute if score #rv_win temp matches 1 run function neofunction:entity/skill/boss/rubra_void/shell_back
execute if score #rv_win temp matches 1.. as @e[type=marker,tag=rubra_pillar] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.02 2 force @a[distance=..128]
