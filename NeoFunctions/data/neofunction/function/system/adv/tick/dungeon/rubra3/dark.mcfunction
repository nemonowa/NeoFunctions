# 命名：dark
# 説明：光を食べる闇：守り石が無いと盲目と暗闇。守り石をオフハンドに持つと盲目は消える（身のまわりだけ見える）
# 説明：影：ときどき湧く（6 秒に 1 回ぐらい、近くに 2 体まで）。いつでも斬れる。守り石の光の中では動きが鈍る
# 実行条件：実行者 プレイヤー（闇の間）
# >/function neofunction:system/adv/tick/dungeon/rubra3
# =/function neofunction:system/adv/tick/dungeon/rubra3/dark

# 内容
effect give @s minecraft:darkness 3 0 true
execute unless entity @s[tag=rubra_stonelit] run effect give @s minecraft:blindness 3 0 true
execute if entity @s[tag=rubra_stonelit] run effect clear @s minecraft:blindness
# 影の無敵の切り替え
execute as @e[type=vex,tag=rubra_shadow,distance=..24] at @s run function neofunction:system/rubra/d3/shadow_light
# 影が湧く（4 秒に 1 回ぐらい、近くに 4 体まで）
execute store result score #rubra_r temp run random value 1..6
execute unless score #rubra_r temp matches 1 run return 0
execute store result score #rubra_n temp if entity @e[type=vex,tag=rubra_shadow,distance=..24]
execute if score #rubra_n temp matches 2.. run return 0
execute as @e[type=marker,tag=rubra_shadow_spawn,distance=..20,sort=random,limit=1] at @s run function neofunction:system/rubra/d3/shadow
