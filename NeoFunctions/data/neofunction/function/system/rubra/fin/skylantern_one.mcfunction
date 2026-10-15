# 命名：skylantern_one
# 説明：灯籠を 1 つ放つ：広場の灯籠の目印のどれかから、少しずらした所に（ずれは random で -4〜4 マス、向きもばらばら）
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/fin/skylantern_tick
# =/function neofunction:system/rubra/fin/skylantern_one

# 内容
execute store result storage neofunction:rubra skyl_m.x float 0.1 run random value -40..40
execute store result storage neofunction:rubra skyl_m.z float 0.1 run random value -40..40
execute store result storage neofunction:rubra skyl_m.r int 1 run random value 0..359
execute as @e[type=marker,tag=rubra_fin_lantern,sort=random,limit=1] at @s run function neofunction:system/rubra/fin/skylantern_put with storage neofunction:rubra skyl_m
