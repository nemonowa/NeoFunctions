# 命名：17
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/17


execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] at @s run tp @s 694.30 44.00 2225.43 1349.53 -2.23

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"地下水路に潜る準備をし、商会長ニールに話しかける。","color":"white","bold":true,"italic":false,"underlined":false}]



scoreboard players set #temp main_story 38
function neofunction:system/adv/tick/quest/main_end
