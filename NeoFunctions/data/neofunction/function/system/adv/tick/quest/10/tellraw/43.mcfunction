# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/43


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 920.60 50.00 1050.46 1081.44 -3.03

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true


#案内開始フラグを設定
scoreboard players set #temp main_story 10
scoreboard players set #progressing main_story 0