# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/.neo

execute if score @s generaltimer matches 241 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/init

execute if score @s generaltimer matches 261 positioned ~ ~1 ~ run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/elemental
execute if score @s generaltimer matches 281 positioned ~ ~1 ~ run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/elemental
execute if score @s generaltimer matches 301 positioned ~ ~1 ~ run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/elemental
execute if score @s generaltimer matches 321 positioned ~ ~1 ~ run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/elemental

execute as @e[tag=ekirielemental] at @s if predicate neofunction:pos/y_7 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/explosion
execute as @e[tag=ekiriFinalAEC] at @s run particle splash ~ ~ ~ 0.1 3 0.1 1 10

execute if score @s generaltimer matches 361 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/throw

execute if score @s generaltimer matches 401 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/water/attack
