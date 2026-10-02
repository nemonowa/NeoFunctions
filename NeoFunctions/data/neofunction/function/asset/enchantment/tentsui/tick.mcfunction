# 命名：tick
# 説明：天墜の進行表。0〜59 照準と秒読み／40 槍が上空に出る／42 落下中（着地まで 42 にとどまる）／61 着弾／62〜 火球・煙・灰／190〜235 槍の霧散／／250 使用中の印を消す／270 後片付け
# 実行条件：爆心として（temp の #nk_now に経過 tick、temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/core/step
# =/function neofunction:asset/enchantment/tentsui/tick


# 内容
execute if score #nk_now temp matches ..41 run function neofunction:asset/enchantment/tentsui/aim
execute if score #nk_now temp matches 1 as @a if score @s neo.nk_id = #nk_cur temp run title @s title {"text":"3","color":"red","bold":true}
execute if score #nk_now temp matches 21 as @a if score @s neo.nk_id = #nk_cur temp run title @s title {"text":"2","color":"red","bold":true}
execute if score #nk_now temp matches 41 as @a if score @s neo.nk_id = #nk_cur temp run title @s title {"text":"1","color":"red","bold":true}
execute if score #nk_now temp matches 1 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 8 0.7
execute if score #nk_now temp matches 21 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 8 0.9
execute if score #nk_now temp matches 41 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 8 1.2
execute if score #nk_now temp matches 40 run function neofunction:asset/enchantment/tentsui/spear
execute if score #nk_now temp matches 42 run function neofunction:asset/enchantment/tentsui/fall
execute if score #nk_now temp matches 61 run function neofunction:asset/enchantment/tentsui/impact
execute if score #nk_now temp matches 62 run function neofunction:asset/enchantment/core/fireball_grow
execute if score #nk_now temp matches 72 run function neofunction:asset/enchantment/core/fireball_shrink
execute if score #nk_now temp matches 61..160 run particle minecraft:campfire_signal_smoke ~ ~3 ~ 3 2 3 0.05 20 force
execute if score #nk_now temp matches 61..240 run particle minecraft:white_ash ~ ~15 ~ 30 10 30 0 150 force
execute if score #nk_now temp matches 61..240 run particle minecraft:ash ~ ~15 ~ 30 10 30 0 150 force
execute if score #nk_now temp matches 100 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.5
execute if score #nk_now temp matches 150 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.6
execute if score #nk_now temp matches 200 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.4
execute if score #nk_now temp matches 190 run function neofunction:asset/enchantment/tentsui/dissolve_start
execute if score #nk_now temp matches 190..235 run function neofunction:asset/enchantment/tentsui/dissolve
execute if score #nk_now temp matches 236 run function neofunction:asset/enchantment/tentsui/dissolve_end
execute if score #nk_now temp matches 250 as @a if score @s neo.nk_id = #nk_cur temp if score @s neo.nk_st matches 1000.. run scoreboard players reset @s neo.nk_st
execute if score #nk_now temp matches 270.. run function neofunction:asset/enchantment/core/cleanup
