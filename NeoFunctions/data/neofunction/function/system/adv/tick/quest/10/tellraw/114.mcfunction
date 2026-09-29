# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/114


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 920.60 50.00 1050.46 1081.44 -3.03

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"巨大な骸骨の口に眠る「青の解結晶」を手に入れ、サラザールを討伐する","color":"white","bold":true,"italic":false,"underlined":false}]
execute as @s at @s run playsound entity.player.levelup record @s ~ ~ ~ 2.0 0.7


#案内開始フラグを設定
scoreboard players set #temp main_story 18
scoreboard players set #progressing main_story 0
