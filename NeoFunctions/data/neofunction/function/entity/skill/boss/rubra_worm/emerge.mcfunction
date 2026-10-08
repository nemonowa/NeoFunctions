# 命名：emerge
# 説明：【追加：2026-10-08 ルブラ編】床を割って飛び出す：てっぺん（worm.next の p）へ。まわりの星核の花を食べ、近くの巨人の像を壊す
# 実行条件：実行者・実行位置 本体（地中）
# >/function neofunction:entity/skill/boss/rubra_worm/warn
# =/function neofunction:entity/skill/boss/rubra_worm/emerge

# 内容
data modify storage neofunction:rubra worm.state set value "up"
function neofunction:entity/skill/boss/rubra_worm/goal_p with storage neofunction:rubra worm.next
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ -38 ~ 2 0.5
playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ -38 ~ 1 0.6
execute positioned ~ -40 ~ run particle minecraft:block{block_state:"minecraft:deepslate"} ~ ~ ~ 1.5 0.5 1.5 0 60 normal
# 星核の花を食べる（まわり 3 マス）
execute store result score #rubra_eat temp run fill ~-3 -41 ~-3 ~3 -37 ~3 minecraft:air replace minecraft:red_candle
execute if score #rubra_eat temp matches 1.. run function neofunction:entity/skill/boss/rubra_worm/ate
# 巨人の像を壊す（7 マス以内）
execute positioned ~ -40 ~ as @e[type=marker,tag=rubra_golem,distance=..7,limit=1] at @s run function neofunction:entity/skill/boss/rubra_worm/golem
