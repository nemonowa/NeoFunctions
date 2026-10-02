# 命名：tick
# 説明：零点崩壊の進行表。1 球が生まれる／10〜89 吸引（球が膨らむ）／90〜109 無音の 1 秒（球が点まで縮む）／110 反転・炸裂／111〜 火球・光の柱・灰／290〜310 光の柱の霧散／320 使用中の印を消す／340 後片付け
# 実行条件：爆心として（#t に経過 tick、#cur に番号）
# >/function neofunction:asset/enchantment/core/tick
# =/function neofunction:asset/enchantment/reiten/tick


# 内容
execute if score #t neo.nk_tmp matches 1 run function neofunction:asset/enchantment/reiten/orb_size {s:4,c:3.4,d:10}
execute if score #t neo.nk_tmp matches 10 run function neofunction:asset/enchantment/reiten/orb_size {s:10,c:8.5,d:80}
execute if score #t neo.nk_tmp matches 10..89 run function neofunction:asset/enchantment/reiten/pull
execute if score #t neo.nk_tmp matches 10..89 run function neofunction:asset/enchantment/reiten/suck_fx
execute if score #t neo.nk_tmp matches 10 run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 20 0.5
execute if score #t neo.nk_tmp matches 30 run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 20 0.7
execute if score #t neo.nk_tmp matches 50 run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 20 0.9
execute if score #t neo.nk_tmp matches 70 run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 20 1.2
execute if score #t neo.nk_tmp matches 10..89 run playsound minecraft:block.portal.ambient master @a ~ ~12 ~ 6 0.5
execute if score #t neo.nk_tmp matches 90 run function neofunction:asset/enchantment/reiten/silence
execute if score #t neo.nk_tmp matches 90..109 run function neofunction:asset/enchantment/reiten/pull
execute if score #t neo.nk_tmp matches 90..109 run particle minecraft:end_rod ~ ~12 ~ 0 0 0 0 1 force
execute if score #t neo.nk_tmp matches 110 run function neofunction:asset/enchantment/reiten/burst
execute if score #t neo.nk_tmp matches 111 run function neofunction:asset/enchantment/core/fireball_grow
execute if score #t neo.nk_tmp matches 125 run function neofunction:asset/enchantment/core/fireball_shrink
execute if score #t neo.nk_tmp matches 110..289 run particle minecraft:end_rod ~ ~40 ~ 0.6 40 0.6 0.01 40 force
execute if score #t neo.nk_tmp matches 110..250 run particle minecraft:white_ash ~ ~20 ~ 40 15 40 0 200 force
execute if score #t neo.nk_tmp matches 110..250 run particle minecraft:reverse_portal ~ ~12 ~ 20 10 20 0.05 100 force
execute if score #t neo.nk_tmp matches 150 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.5
execute if score #t neo.nk_tmp matches 210 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.4
execute if score #t neo.nk_tmp matches 290 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 20 0.5
execute if score #t neo.nk_tmp matches 290..309 run function neofunction:asset/enchantment/reiten/pillar_fade
execute if score #t neo.nk_tmp matches 310 run function neofunction:asset/enchantment/reiten/pillar_end
execute if score #t neo.nk_tmp matches 320 as @a if score @s neo.nk_id = #cur neo.nk_id if score @s neo.nk_busy matches 1.. run scoreboard players reset @s neo.nk_busy
execute if score #t neo.nk_tmp matches 340.. run function neofunction:asset/enchantment/core/cleanup
