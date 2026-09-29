# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/82


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 913.50 50.00 1057.82 -2069.56 39.73

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute as @a at @s run tellraw @s {"text":"▶ この先に進むと戦闘を伴うメインストーリーが開始されます。\n十分に装備を整えてから挑戦してください。\n推奨レベル：15+\n\n準備が整ったら、前哨基地に挑戦・制圧したのち\nビリーに再度話しかけると進行します。","color":"#FFD4B8","bold":true,"italic":false}

#案内開始フラグを設定
scoreboard players set #temp main_story 15
scoreboard players set #progressing main_story 0