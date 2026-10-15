# 命名：dying
# 説明：倒れていく（毎 tick）：黒い部分が流れ落ち（1 秒）、床の黒い水が引き（2 秒）、像が穏やかな顔のまま石に戻る。最後の言葉のあと、セレンの場面（428）へ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/dying

# 内容
execute store result score #rk_d temp run data get storage neofunction:rubra keeper.d
scoreboard players add #rk_d temp 1
execute store result storage neofunction:rubra keeper.d int 1 run scoreboard players get #rk_d temp
execute if score #rk_d temp matches 1..40 run particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~3 ~ 1.2 2 1.2 0 8 normal
execute if score #rk_d temp matches 20 run kill @e[type=block_display,tag=rubra_keeper_black]
execute if score #rk_d temp matches 20 run particle minecraft:splash ~ ~4 ~ 1.5 2.5 1.5 0 300 normal
# 番人の間を広げたぶん、黒い水を消す範囲を ±16 → ±20 に
execute if score #rk_d temp matches 40 run fill ~-22 ~ ~-22 ~22 ~2 ~22 minecraft:air replace minecraft:black_carpet
execute if score #rk_d temp matches 40 as @e[type=drowned,tag=rubra_drip,distance=..32] run tag @s add del
execute if score #rk_d temp matches 50 run tellraw @a[distance=..40] {"text":"番人は、ゆっくりと膝をついた。黒い水がすっかり流れ落ちたその顔は、やはり穏やかに祈っていた。石の唇が、かすかに動いた。","color":"gray","italic":true}
execute if score #rk_d temp matches 90 run tellraw @a[distance=..40] {"text":"――ありがとう。……ゆるして。","color":"#A8E6FF","bold":true,"italic":true}
execute if score #rk_d temp matches 90 run playsound minecraft:block.beacon.deactivate hostile @a[distance=..48] ~ ~3 ~ 2 0.6
execute if score #rk_d temp matches 130.. run function neofunction:entity/skill/boss/rubra_keeper/dead
