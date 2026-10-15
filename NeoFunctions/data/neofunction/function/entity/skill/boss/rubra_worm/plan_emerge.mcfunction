# 命名：plan_emerge
# 説明：突き上げの狙いを決める（前の plan の中身）：大空洞にいるプレイヤーからひとり選び、その足もと近く（±3）を A、そこから ±12 先を B、真ん中の上をてっぺん P。空洞の中（x790〜824・z3246〜3290）に収める。地中を A へ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/plan
# =/function neofunction:entity/skill/boss/rubra_worm/plan_emerge

# 内容
execute store result score #rw_ax temp run data get entity @s Pos[0]
execute store result score #rw_az temp run data get entity @s Pos[2]
execute as @a[distance=..64,gamemode=!spectator,sort=random,limit=1] run function neofunction:entity/skill/boss/rubra_worm/pick
execute store result score #rubra_r temp run random value -3..3
scoreboard players operation #rw_ax temp += #rubra_r temp
execute store result score #rubra_r temp run random value -3..3
scoreboard players operation #rw_az temp += #rubra_r temp
scoreboard players operation #rw_bx temp = #rw_ax temp
execute store result score #rubra_r temp run random value -12..12
scoreboard players operation #rw_bx temp += #rubra_r temp
scoreboard players operation #rw_bz temp = #rw_az temp
execute store result score #rubra_r temp run random value -12..12
scoreboard players operation #rw_bz temp += #rubra_r temp
# 空洞の中に収める
execute if score #rw_ax temp matches ..789 run scoreboard players set #rw_ax temp 790
execute if score #rw_ax temp matches 825.. run scoreboard players set #rw_ax temp 824
execute if score #rw_az temp matches ..3245 run scoreboard players set #rw_az temp 3246
execute if score #rw_az temp matches 3291.. run scoreboard players set #rw_az temp 3290
execute if score #rw_bx temp matches ..789 run scoreboard players set #rw_bx temp 790
execute if score #rw_bx temp matches 825.. run scoreboard players set #rw_bx temp 824
execute if score #rw_bz temp matches ..3245 run scoreboard players set #rw_bz temp 3246
execute if score #rw_bz temp matches 3291.. run scoreboard players set #rw_bz temp 3290
# てっぺん P は A と B の真ん中
scoreboard players operation #rw_px temp = #rw_ax temp
scoreboard players operation #rw_px temp += #rw_bx temp
scoreboard players operation #rw_px temp /= $2 const
scoreboard players operation #rw_pz temp = #rw_az temp
scoreboard players operation #rw_pz temp += #rw_bz temp
scoreboard players operation #rw_pz temp /= $2 const
execute store result storage neofunction:rubra worm.next.ax int 1 run scoreboard players get #rw_ax temp
execute store result storage neofunction:rubra worm.next.az int 1 run scoreboard players get #rw_az temp
execute store result storage neofunction:rubra worm.next.bx int 1 run scoreboard players get #rw_bx temp
execute store result storage neofunction:rubra worm.next.bz int 1 run scoreboard players get #rw_bz temp
execute store result storage neofunction:rubra worm.next.px int 1 run scoreboard players get #rw_px temp
execute store result storage neofunction:rubra worm.next.pz int 1 run scoreboard players get #rw_pz temp
function neofunction:entity/skill/boss/rubra_worm/goal_a with storage neofunction:rubra worm.next
