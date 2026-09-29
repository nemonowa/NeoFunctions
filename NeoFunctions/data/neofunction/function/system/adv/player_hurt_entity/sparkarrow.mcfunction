# 命名：sparkarrow
# 説明：被弾時に雷を降らす
# >
# =/function neofunction:system/adv/player_hurt_entity/sparkarrow

function neofunction:system/adv/player_hurt_entity/.get_entity {Name:"sparkarrow"}
# 内容
execute at @e[tag=hit] run summon minecraft:lightning_bolt
execute at @e[tag=hit] run particle minecraft:electric_spark ~ ~ ~ 0.3 1 1 1 100
# 火事を防止させることになっているはずであると決まっている
execute at @e[tag=hit] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace fire
tag @e remove hit