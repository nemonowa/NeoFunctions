# 命名：=/function neofunction:entity/skill/boss/sarazu/start
# 説明：スカルリメインのボス
# 説明：タグ：boss
# >
# =/function neofunction:entity/skill/boss/sarazaru/start


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

#サラザール本体
execute in neodimension:ceresta_festa positioned 398 41 1031 run function neofunction:asset/summon/604
execute in neodimension:ceresta_festa positioned 398 41 1016 run function neofunction:asset/summon/605
execute in neodimension:ceresta_festa positioned 398 41 1046 run function neofunction:asset/summon/605

