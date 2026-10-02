# 命名：tick
# 説明：終焉の星の進行表。1 矢を追う（上昇中は 1 にとどまる）／2 太陽の誕生／3 降下（着地まで 3 にとどまる）／60 炸裂／61〜 火球／65〜 火球が昇る・キノコ雲が立つ／280〜320 雲の霧散／330 使用中の印を消す／350 後片付け
# 実行条件：爆心として（temp の #nk_now に経過 tick、temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/core/tick
# =/function neofunction:asset/enchantment/shuuen/tick


# 内容
execute if score #nk_now temp matches 1 run function neofunction:asset/enchantment/shuuen/follow
execute if score #nk_now temp matches 2 run function neofunction:asset/enchantment/shuuen/birth
execute if score #nk_now temp matches 3 run function neofunction:asset/enchantment/shuuen/descend
execute if score #nk_now temp matches 60 run function neofunction:asset/enchantment/shuuen/impact
execute if score #nk_now temp matches 61 run function neofunction:asset/enchantment/core/fireball_grow
execute if score #nk_now temp matches 65 run function neofunction:asset/enchantment/shuuen/ball_prep
execute if score #nk_now temp matches 70 run function neofunction:asset/enchantment/shuuen/ball_rise
execute if score #nk_now temp matches 70 run function neofunction:asset/enchantment/shuuen/cloud
execute if score #nk_now temp matches 71 run function neofunction:asset/enchantment/shuuen/cloud_grow
execute if score #nk_now temp matches 110 run function neofunction:asset/enchantment/core/fireball_shrink
execute if score #nk_now temp matches 60..280 run particle minecraft:campfire_signal_smoke ~ ~20 ~ 3 15 3 0.03 25 force
execute if score #nk_now temp matches 60..300 run particle minecraft:white_ash ~ ~20 ~ 40 15 40 0 200 force
execute if score #nk_now temp matches 60..300 run particle minecraft:ash ~ ~20 ~ 40 15 40 0 200 force
execute if score #nk_now temp matches 100 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.5
execute if score #nk_now temp matches 160 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.4
execute if score #nk_now temp matches 220 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.6
execute if score #nk_now temp matches 280 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 20 0.5
execute if score #nk_now temp matches 280..320 run function neofunction:asset/enchantment/shuuen/cloud_fade
execute if score #nk_now temp matches 321 run function neofunction:asset/enchantment/shuuen/cloud_end
execute if score #nk_now temp matches 330 as @a if score @s neo.nk_id = #nk_cur temp if score @s neo.nk_st matches 1000.. run scoreboard players reset @s neo.nk_st
execute if score #nk_now temp matches 350.. run function neofunction:asset/enchantment/core/cleanup
