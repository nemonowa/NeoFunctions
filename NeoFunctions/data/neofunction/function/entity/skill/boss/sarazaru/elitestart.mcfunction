# 命名：=/function neofunction:entity/skill/boss/sarazu/elitestart
# 説明：スカルリメインのエリートボス
# 説明：タグ：boss
# >
# =/function neofunction:entity/skill/boss/sarazaru/elitestart

#ボスがいないか三度チェック
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/738"}] run return 0
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/604"}] run return 0
#トライデント消す
execute in neodimension:ceresta_festa positioned 398 42 1031 run kill @e[type=minecraft:trident,distance=..25]
#入口消す
execute in neodimension:ceresta_festa run setblock 398 42 1031 minecraft:air
execute in neodimension:ceresta_festa run setblock 398 43 1031 minecraft:air
#これいる？
#execute in neodimension:ceresta_festa positioned 398 42 1031 run stopsound @a[distance=..32]

execute in neodimension:ceresta_festa run tp @a[tag=temp232] 406 42 1031 90 0

execute in neodimension:ceresta_festa positioned 398 41 1031 run function neofunction:asset/summon/738
execute in neodimension:ceresta_festa positioned 398 41 1046 run function neofunction:asset/summon/739
execute in neodimension:ceresta_festa positioned 398 41 1016 run function neofunction:asset/summon/739
execute in neodimension:ceresta_festa positioned 383 41 1031 run function neofunction:asset/summon/739
execute in neodimension:ceresta_festa positioned 413 41 1031 run function neofunction:asset/summon/739

effect clear @a[tag=temp232] minecraft:darkness


tag @a remove temp232
