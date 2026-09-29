# 命名：elemental
# 説明：元素の司教召喚
# 実行条件：adventureでない場合m=!2
# >/neofunction:tick/.neo
# =/function neofunction:system/adv/location/ceresta/elemental



execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] run return 0
execute if entity @e[nbt={DeathLootTable:"neofunction:asset/summon/768"},limit=1] run return 0
# 内容：魔女保護を起動
execute in neodimension:ceresta_festa run setblock 1029 4 1764 minecraft:redstone_block
#ゲート削除
execute in neodimension:ceresta_festa run fill 1032 7 1762 1026 14 1768 air

execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/660
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/664
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/668
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/672
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/660
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/664
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/668
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/672
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/660
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/664
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/668
execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa positioned 1029 10 1765 run function neofunction:asset/summon/672

execute unless entity @e[nbt={DeathLootTable:"neofunction:asset/summon/752"},limit=1] in neodimension:ceresta_festa run summon zombie 1029 10 1765 {Silent:1b,DeathLootTable:"neofunction:asset/summon/752",Health:360f,Tags:["lv3","ekiriburiamu","boss"],CustomName:[{"text":"大","color":"#FF1C3A","bold":true,"italic":false},{"text":"司","color":"#C34C75"},{"text":"教","color":"#867CB0"},{"text":"エ","color":"#4AACEB"},{"text":"キ","color":"#36C9D9"},{"text":"リ","color":"#37DE9F"},{"text":"ブ","color":"#38F265"},{"text":"リ","color":"#4CF33D"},{"text":"ア","color":"#88CF36"},{"text":"ム","color":"#FF8629"}],active_effects:[{id:"minecraft:fire_resistance",amplifier:126b,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:126b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:360},{id:"minecraft:follow_range",base:64}],equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":[{"text":"四","color":"#FF1C3A","bold":true,"italic":false},{"text":"元","color":"#C34C75"},{"text":"杖","color":"#C34C75"},{"text":"エ","color":"#4AACEB"},{"text":"キ","color":"#36C9D9"},{"text":"リ","color":"#37DE9F"},{"text":"ブ","color":"#38F265"},{"text":"リ","color":"#4CF33D"},{"text":"ア","color":"#88CF36"},{"text":"ム","color":"#FF8629"}],"minecraft:custom_model_data":{floats:[1328.0f]},"minecraft:enchantments":{"minecraft:blast_protection":10,"minecraft:feather_falling":10,"minecraft:fire_protection":10,"minecraft:projectile_protection":10,"minecraft:knockback":3},"minecraft:attribute_modifiers":[{type:"attack_damage",id:"neofunction:f24e5e64-ca09-4493-85c8-f9a6467d1317",amount:0,operation:"add_value",slot:"mainhand"}]}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:enchantments":{"minecraft:feather_falling":10,"minecraft:projectile_protection":5},"minecraft:attribute_modifiers":[{type:"movement_speed",id:"neofunction:c9653e3e-eb0c-46f1-845b-1fe1df955565",amount:0.0,operation:"add_multiplied_base",slot:"any"}]}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16777215}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1731696740,-1549381992,-1517758005,1558949573],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAwMGNmYjJmZjFhOTg0YzNiMzNmNzJhMjVmNDlkZmYxNjgzOTY1MGJlZDY3NzA3M2QyZDQ1MjhlZmQ4ZWFiZSJ9fX0="}]}}}}}