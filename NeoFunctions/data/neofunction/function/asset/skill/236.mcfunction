# 命名：236
# 説明：獣化【フェラル・インスティンクト】
# >
# =/function neofunction:asset/skill/236

# 内容
# 周囲32m以内にいる自身の使い魔の数(最大5体まで加算)に応じて、移動速度が上昇する。
# さらに自身のLVLに応じて速度の効果レベルにボーナスが乗る（LVL ..19=+0／20..39=+1／40..=+2）。
# 被ダメージ軽減(resistance)は強力なので、LVL50未満では付与せず、50以上でのみ使い魔数に
# 応じて段階上昇する（迂闊に強くしすぎないよう最大amplifier2で頭打ち）。

scoreboard players set #count236 temp 0
execute as @e[tag=familiar,distance=..32,limit=5] run scoreboard players add #count236 temp 1

# LVL ..19（ボーナス+0）
execute if score @s LVL matches ..19 if score #count236 temp matches 0 run effect give @s minecraft:speed 15 0 true
execute if score @s LVL matches ..19 if score #count236 temp matches 1..2 run effect give @s minecraft:speed 15 1 true
execute if score @s LVL matches ..19 if score #count236 temp matches 3..4 run effect give @s minecraft:speed 15 2 true
execute if score @s LVL matches ..19 if score #count236 temp matches 5.. run effect give @s minecraft:speed 15 3 true

# LVL 20..39（ボーナス+1）
execute if score @s LVL matches 20..39 if score #count236 temp matches 0 run effect give @s minecraft:speed 15 1 true
execute if score @s LVL matches 20..39 if score #count236 temp matches 1..2 run effect give @s minecraft:speed 15 2 true
execute if score @s LVL matches 20..39 if score #count236 temp matches 3..4 run effect give @s minecraft:speed 15 3 true
execute if score @s LVL matches 20..39 if score #count236 temp matches 5.. run effect give @s minecraft:speed 15 4 true

# LVL 40..（ボーナス+2）
execute if score @s LVL matches 40.. if score #count236 temp matches 0 run effect give @s minecraft:speed 15 2 true
execute if score @s LVL matches 40.. if score #count236 temp matches 1..2 run effect give @s minecraft:speed 15 3 true
execute if score @s LVL matches 40.. if score #count236 temp matches 3..4 run effect give @s minecraft:speed 15 4 true
execute if score @s LVL matches 40.. if score #count236 temp matches 5.. run effect give @s minecraft:speed 15 5 true

# 被ダメージ軽減：LVL50未満は付与なし。50以上で使い魔数に応じて上昇（最大amplifier2で頭打ち）
execute if score @s LVL matches 50.. if score #count236 temp matches 1..2 run effect give @s minecraft:resistance 15 0 true
execute if score @s LVL matches 50.. if score #count236 temp matches 3..4 run effect give @s minecraft:resistance 15 1 true
execute if score @s LVL matches 50.. if score #count236 temp matches 5.. run effect give @s minecraft:resistance 15 2 true

# 演出
playsound entity.wolf.growl record @s ~ ~ ~ 1.0 0.8
particle minecraft:sweep_attack ~ ~1 ~ 0.3 0.3 0.3 0 5 force

# SP消費：20SP消費
scoreboard players remove @s SP 20
