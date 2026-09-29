# 命名：heal_full
# 説明：緩衝体力全回復
# > 1分クロックです
# =/function neofunction:player/absorption/heal_full

# --- セーフティ：周囲32m以内に敵 or スポナーマインカートがいたら処理中断 ---
execute if entity @e[tag=enemy,distance=..32] run return 0
execute if entity @e[type=minecraft:spawner_minecart,distance=..32] run return 0

effect give @s minecraft:absorption 1 126 true
effect clear @s minecraft:absorption

# --- 演出 ---
particle minecraft:dust{color:[1.0,0.84,0.0],scale:1.2} ~ ~1.2 ~ 0.3 0.4 0.3 0 20 force @s
particle minecraft:end_rod ~ ~1 ~ 0.25 0.5 0.25 0.01 8 force @s

# --- 音 ---
playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1.0 1.6
playsound minecraft:entity.experience_orb.pickup record @s ~ ~ ~ 1.0 1.8

scoreboard players set @a no_dmg_timer 0

tag @s add absorphealed