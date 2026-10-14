# 命名：child_wave
# 説明：【追加：2026-10-09 ルブラ編】星の子のまわり（10 マス）の 4 方向から、黒い滴りが滲み出す
# 実行条件：実行者・実行位置 星の子
# >/function neofunction:entity/skill/boss/rubra_void/child_tick
# =/function neofunction:entity/skill/boss/rubra_void/child_wave

# 内容
execute positioned ~10 ~-2 ~ run function neofunction:asset/summon/915
execute positioned ~-10 ~-2 ~ run function neofunction:asset/summon/915
execute positioned ~ ~-2 ~10 run function neofunction:asset/summon/915
execute positioned ~ ~-2 ~-10 run function neofunction:asset/summon/915
# （915 は最初から rubra_fin_drip）
playsound minecraft:entity.drowned.ambient_water hostile @a[distance=..40] ~ ~ ~ 2 0.5
tellraw @a[distance=..40] {"text":"黒い水の残りが、地面から滲み出した。","color":"#6E7390","italic":true}
