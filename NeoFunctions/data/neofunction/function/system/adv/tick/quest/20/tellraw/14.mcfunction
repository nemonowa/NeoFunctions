# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/14


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run tp @s 844.70 42.00 1582.48 4721.01 -4.91

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"厩舎に向いシェーラからの続きを聞く","color":"white","bold":true,"italic":false,"underlined":false}]

#案内開始フラグを設定
scoreboard players set #temp main_story 22