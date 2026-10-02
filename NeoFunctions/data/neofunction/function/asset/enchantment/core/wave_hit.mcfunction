# 命名：wave_hit
# 説明：衝撃波を受けたモブ。爆心からの距離でダメージを決め、爆心と反対の方向へ吹き飛ばす
# 実行条件：衝撃波の輪の中のモブ（temp の #nk_wr に半径、#nk_gx・#nk_gz に爆心の座標×100）
# >/function neofunction:asset/enchantment/core/wave_band
# =/function neofunction:asset/enchantment/core/wave_hit


# 内容
tag @s add neo.nk_hit
execute if score #nk_wr temp matches ..16 run function neofunction:asset/enchantment/core/damage {d:2000}
execute if score #nk_wr temp matches 17..32 run function neofunction:asset/enchantment/core/damage {d:500}
execute if score #nk_wr temp matches 33..64 run function neofunction:asset/enchantment/core/damage {d:200}
execute if score #nk_wr temp matches 65.. run function neofunction:asset/enchantment/core/damage {d:80}
scoreboard players set #nk_str temp 500
execute if score #nk_wr temp matches 33..64 run scoreboard players set #nk_str temp 350
execute if score #nk_wr temp matches 65.. run scoreboard players set #nk_str temp 220
execute store result score #nk_dx temp run data get entity @s Pos[0] 100
execute store result score #nk_dz temp run data get entity @s Pos[2] 100
scoreboard players operation #nk_dx temp -= #nk_gx temp
scoreboard players operation #nk_dz temp -= #nk_gz temp
scoreboard players operation #nk_dx temp *= #nk_str temp
scoreboard players operation #nk_dz temp *= #nk_str temp
scoreboard players operation #nk_dx temp /= #nk_wr temp
scoreboard players operation #nk_dz temp /= #nk_wr temp
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #nk_dx temp
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #nk_dz temp
data modify entity @s Motion[1] set value 1.4d
