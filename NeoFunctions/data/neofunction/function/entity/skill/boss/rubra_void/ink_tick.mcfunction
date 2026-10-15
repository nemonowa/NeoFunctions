# 命名：ink_tick
# 説明：黒い水：滴りが歩いた跡に垂らす（4 tick ごと）、1 秒ごとに古くなり 6 秒で乾く、上に立つと削られる（0.5 秒ごと） 上に立つと衰弱と、乗った瞬間に即時ダメージ I（ink_step）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/ink_tick

# 内容
execute store result score #rv_ik temp run data get storage neofunction:rubra fin.ik
scoreboard players add #rv_ik temp 1
execute if score #rv_ik temp matches 20.. run scoreboard players set #rv_ik temp 0
execute store result storage neofunction:rubra fin.ik int 1 run scoreboard players get #rv_ik temp
scoreboard players operation #rv_m temp = #rv_ik temp
scoreboard players operation #rv_m temp %= $4 const
execute if score #rv_m temp matches 0 as @e[type=zombie,tag=rubra_fin_drip,distance=..96] at @s run function neofunction:entity/skill/boss/rubra_void/ink_put
execute if score #rv_ik temp matches 0 run function neofunction:entity/skill/boss/rubra_void/ink_age
scoreboard players operation #rv_m temp = #rv_ik temp
scoreboard players operation #rv_m temp %= $10 const
execute if score #rv_m temp matches 0 as @a[distance=..160,gamemode=!spectator,predicate=neofunction:rubra/on_ground] at @s unless block ~ ~ ~ minecraft:black_carpet run tag @s remove rubra_onink
execute if score #rv_m temp matches 0 as @a[distance=..160,gamemode=!spectator,predicate=neofunction:rubra/on_ground] at @s if block ~ ~ ~ minecraft:black_carpet run function neofunction:entity/skill/boss/rubra_void/ink_step
