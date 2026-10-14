# 命名：look
# 説明：【追加：2026-10-09 ルブラ編】見た目：黒い水の滴りと渦の粒。第 2 形態は赤い光、第 3 形態は顎の黒い粒。目標のひとこと（5 秒ごと）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/look

# 内容
particle minecraft:squid_ink ~ ~ ~ 4 4 4 0.02 30 force @a[distance=..128]
particle minecraft:reverse_portal ~ ~ ~ 3 3 3 0.05 20 force @a[distance=..128]
execute if data storage neofunction:rubra fin{form:2} run particle minecraft:dust{color:[1.0,0.25,0.2],scale:2.5} ~ ~ ~ 3 3 3 0 25 force @a[distance=..128]
execute if data storage neofunction:rubra fin{form:2} run particle minecraft:lava ~ ~ ~ 2 2 2 0 3 force @a[distance=..128]
execute if data storage neofunction:rubra fin{form:3} run particle minecraft:sculk_soul ~ ~ ~ 7 4 7 0.02 15 force @a[distance=..128]
execute store result score #rv_tp temp run data get storage neofunction:rubra fin.tp
scoreboard players add #rv_tp temp 1
execute if score #rv_tp temp matches 10.. run scoreboard players set #rv_tp temp 0
execute store result storage neofunction:rubra fin.tp int 1 run scoreboard players get #rv_tp temp
execute if score #rv_tp temp matches 0 run function neofunction:entity/skill/boss/rubra_void/hint
