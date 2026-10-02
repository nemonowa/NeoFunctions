# 命名：wave_hit
# 説明：衝撃波を受けたモブ。爆心からの距離でダメージを決め、爆心と反対の方向へ吹き飛ばす
# 実行条件：衝撃波の輪の中のモブ（#r に半径、#gx・#gz に爆心の座標×100）
# >/function neofunction:asset/enchantment/core/wave_band
# =/function neofunction:asset/enchantment/core/wave_hit


# 内容
tag @s add neo.nk_hit
execute if score #r neo.nk_tmp matches ..16 run function neofunction:asset/enchantment/core/damage {d:2000}
execute if score #r neo.nk_tmp matches 17..32 run function neofunction:asset/enchantment/core/damage {d:500}
execute if score #r neo.nk_tmp matches 33..64 run function neofunction:asset/enchantment/core/damage {d:200}
execute if score #r neo.nk_tmp matches 65.. run function neofunction:asset/enchantment/core/damage {d:80}
scoreboard players set #str neo.nk_tmp 500
execute if score #r neo.nk_tmp matches 33..64 run scoreboard players set #str neo.nk_tmp 350
execute if score #r neo.nk_tmp matches 65.. run scoreboard players set #str neo.nk_tmp 220
execute store result score #dx neo.nk_tmp run data get entity @s Pos[0] 100
execute store result score #dz neo.nk_tmp run data get entity @s Pos[2] 100
scoreboard players operation #dx neo.nk_tmp -= #gx neo.nk_tmp
scoreboard players operation #dz neo.nk_tmp -= #gz neo.nk_tmp
scoreboard players operation #dx neo.nk_tmp *= #str neo.nk_tmp
scoreboard players operation #dz neo.nk_tmp *= #str neo.nk_tmp
scoreboard players operation #dx neo.nk_tmp /= #r neo.nk_tmp
scoreboard players operation #dz neo.nk_tmp /= #r neo.nk_tmp
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #dx neo.nk_tmp
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #dz neo.nk_tmp
data modify entity @s Motion[1] set value 1.4d
