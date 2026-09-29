# 命名：frog
# 説明：
# >neodvancement/player_hurt_entity/かえるたち
# =/function neofunction:system/adv/player_hurt_entity/frog

# ランダムスコア生成 (5~20 → 0.5~2.0のピッチに対応、0.1刻み)
execute store result score #frogsoundrandom temp run random value 5..20

execute if score #frogsoundrandom temp matches 5 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 0.5
execute if score #frogsoundrandom temp matches 6 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 0.6
execute if score #frogsoundrandom temp matches 7 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 0.7
execute if score #frogsoundrandom temp matches 8 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 0.8
execute if score #frogsoundrandom temp matches 9 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 0.9
execute if score #frogsoundrandom temp matches 10 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.0
execute if score #frogsoundrandom temp matches 11 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.1
execute if score #frogsoundrandom temp matches 12 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.2
execute if score #frogsoundrandom temp matches 13 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.3
execute if score #frogsoundrandom temp matches 14 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.4
execute if score #frogsoundrandom temp matches 15 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.5
execute if score #frogsoundrandom temp matches 16 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.6
execute if score #frogsoundrandom temp matches 17 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.7
execute if score #frogsoundrandom temp matches 18 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.8
execute if score #frogsoundrandom temp matches 19 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 1.9
execute if score #frogsoundrandom temp matches 20 run playsound minecraft:entity.frog.hurt record @s ~ ~ ~ 2.0 2.0