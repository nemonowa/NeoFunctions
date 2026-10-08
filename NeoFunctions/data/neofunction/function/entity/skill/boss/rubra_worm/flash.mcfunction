# 命名：flash
# 説明：【追加：2026-10-08 ルブラ編】ミラの光（第 2 段階、毎 tick）：45 秒ごとに、欠片を投げ上げて 15 秒のあいだ体じゅうの節を光らせる
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/flash

# 内容
execute store result score #rubra_ft temp run data get storage neofunction:rubra worm.ft
scoreboard players add #rubra_ft temp 1
execute if score #rubra_ft temp matches 900.. run scoreboard players set #rubra_ft temp 0
execute store result storage neofunction:rubra worm.ft int 1 run scoreboard players get #rubra_ft temp
# 光る
execute if score #rubra_ft temp matches 20 run tellraw @a[distance=..64] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「――照らして！」"}]
execute if score #rubra_ft temp matches 20 in neodimension:ceresta_festa positioned 812 -22 3268 run particle minecraft:dust{color:[1.0,0.3,0.2],scale:2.0} ~ ~ ~ 18 4 18 0 400 force @a[distance=..64]
execute if score #rubra_ft temp matches 20 in neodimension:ceresta_festa run playsound minecraft:block.amethyst_block.resonate hostile @a[distance=..64] 812 -30 3268 2 0.6
execute if score #rubra_ft temp matches 20 run data modify storage neofunction:rubra worm.flash set value 1b
execute if score #rubra_ft temp matches 20 run function neofunction:entity/skill/boss/rubra_worm/set_glow
# 消える
execute if score #rubra_ft temp matches 320 run data modify storage neofunction:rubra worm.flash set value 0b
execute if score #rubra_ft temp matches 320 run function neofunction:entity/skill/boss/rubra_worm/set_glow
