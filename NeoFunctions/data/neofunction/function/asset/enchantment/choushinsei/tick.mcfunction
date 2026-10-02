# 命名：tick
# 説明：超新星の進行表。1〜40 浮上（光の輪が収束）／40〜79 臨界（星が膨らみ鼓動が速まる）／80 炸裂／81〜 火球・星雲・光の粒／100 本人を放す／230 使用中の印を消す／240 後片付け
# 実行条件：爆心として（temp の #nk_now に経過 tick、temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/core/step
# =/function neofunction:asset/enchantment/choushinsei/tick


# 内容
execute if score #nk_now temp matches 1..40 run tp @s ~ ~0.15 ~
execute if score #nk_now temp matches 1..79 at @s run function neofunction:asset/enchantment/choushinsei/hold
execute if score #nk_now temp matches 1..40 at @s run function neofunction:asset/enchantment/choushinsei/gather
execute if score #nk_now temp matches 2 run function neofunction:asset/enchantment/choushinsei/core_size {s:1.5,d:38}
execute if score #nk_now temp matches 40 run function neofunction:asset/enchantment/choushinsei/core_size {s:4,d:38}
execute if score #nk_now temp matches 40..79 at @s run function neofunction:asset/enchantment/choushinsei/critical
execute if score #nk_now temp matches 40 at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 16 0.6
execute if score #nk_now temp matches 55 at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 16 0.7
execute if score #nk_now temp matches 65 at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 16 0.8
execute if score #nk_now temp matches 72 at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 16 0.9
execute if score #nk_now temp matches 76 at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 16 1.0
execute if score #nk_now temp matches 78 at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 16 1.1
execute if score #nk_now temp matches 80 at @s run function neofunction:asset/enchantment/choushinsei/nova
execute if score #nk_now temp matches 81..99 run function neofunction:asset/enchantment/choushinsei/hold_air
execute if score #nk_now temp matches 81 run function neofunction:asset/enchantment/core/fireball_grow
execute if score #nk_now temp matches 95 run function neofunction:asset/enchantment/core/fireball_shrink
execute if score #nk_now temp matches 81..220 run function neofunction:asset/enchantment/choushinsei/nebula
execute if score #nk_now temp matches 100 as @a if score @s neo.nk_id = #nk_cur temp run function neofunction:asset/enchantment/choushinsei/release
execute if score #nk_now temp matches 130 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.5
execute if score #nk_now temp matches 190 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 30 0.4
execute if score #nk_now temp matches 230 as @a if score @s neo.nk_id = #nk_cur temp run scoreboard players reset @s neo.nk_st
execute if score #nk_now temp matches 240.. run function neofunction:asset/enchantment/core/cleanup
