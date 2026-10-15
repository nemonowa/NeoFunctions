# 命名：drip
# 説明：黒い滴り（ゾンビ）を呼ぶ：舞台の人のそばに 3 体（あたりに 8 体まで）。歩いた跡に黒い水を垂らす
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack
# >/function neofunction:entity/skill/boss/rubra_void/attack2
# =/function neofunction:entity/skill/boss/rubra_void/drip

# 内容
execute store result score #rv_n temp if entity @e[type=zombie,tag=rubra_fin_drip,distance=..128]
execute if score #rv_n temp matches 8.. run return run function neofunction:entity/skill/boss/rubra_void/pillar_start
execute as @a[distance=..96,gamemode=!spectator,sort=random,limit=1] at @s positioned ~4 ~ ~3 if block ~ ~-1 ~ minecraft:smooth_quartz run function neofunction:asset/summon/915
execute as @a[distance=..96,gamemode=!spectator,sort=random,limit=1] at @s positioned ~-3 ~ ~-4 if block ~ ~-1 ~ minecraft:smooth_quartz run function neofunction:asset/summon/915
execute as @a[distance=..96,gamemode=!spectator,sort=random,limit=1] at @s positioned ~-4 ~ ~3 if block ~ ~-1 ~ minecraft:smooth_quartz run function neofunction:asset/summon/915
particle minecraft:squid_ink ~ ~-10 ~ 10 2 10 0.05 100 force @a[distance=..128]
tellraw @a[distance=..128] {"text":"黒い水が舞台に滴り、人の形になった。歩いた跡に、黒い水が垂れていく。","color":"#6E7390","italic":true}
