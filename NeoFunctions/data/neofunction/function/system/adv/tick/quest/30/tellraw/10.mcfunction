# 命名：10
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/10


execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] at @s run tp @s 702.67 41.94 2143.48 -129.39 4.05

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

schedule function neofunction:system/adv/tick/quest/30/tellraw/11 5s


