# 命名：l3bridge_tick
# 説明：【追加：2026-10-14 ルブラ編】光の橋（毎 tick、d1.bridge を数える）：残り 8 tick から揺らいで知らせ、0 で消える（l3bridge_off）
# 実行条件：schedule
# >/function neofunction:system/rubra/d1/l3bridge
# =/function neofunction:system/rubra/d1/l3bridge_tick

# 内容
execute store result score #rubra_b temp run data get storage neofunction:rubra d1.bridge
scoreboard players remove #rubra_b temp 1
execute store result storage neofunction:rubra d1.bridge int 1 run scoreboard players get #rubra_b temp
execute if score #rubra_b temp matches 1..8 in neodimension:ceresta_festa run particle minecraft:dust{color:[1.0,0.55,0.2],scale:1.0} 847.5 25 3286.5 1.5 0.1 1 0 6 normal
execute if score #rubra_b temp matches 8 in neodimension:ceresta_festa run playsound minecraft:block.amethyst_block.chime block @a[distance=..24] 847.5 25 3286.5 1.5 0.6
execute if score #rubra_b temp matches ..0 run return run function neofunction:system/rubra/d1/l3bridge_off
schedule function neofunction:system/rubra/d1/l3bridge_tick 1t replace
