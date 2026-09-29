# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/.neo

execute if score @s generaltimer matches 441 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/init

execute positioned 1029 7 1765 run effect give @a[predicate=neofunction:pos/y_17,distance=..32] levitation 20 1
execute positioned 1029 7 1765 run effect clear @a[predicate=neofunction:pos/y18_,distance=..32] levitation
execute positioned 1029 7 1765 run effect give @a[distance=..32] slow_falling 1 0 true

execute as @a on vehicle on passengers run ride @s dismount

execute if score @s generaltimer matches 481 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/pre
execute if score @s generaltimer matches 501 run function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/shoot
execute if score @s generaltimer matches 520 positioned 1029 7 1765 run effect clear @a[distance=..32] levitation
execute if score @s generaltimer matches 520 positioned 1029 7 1765 run effect clear @a[distance=..32] slow_falling