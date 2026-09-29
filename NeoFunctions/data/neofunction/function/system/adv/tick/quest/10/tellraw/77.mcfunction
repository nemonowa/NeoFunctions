# 命名：77
# 説明：（説明未記載）
# >
# =/function neofunction:system/adv/tick/quest/10/tellraw/77
 # 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/6


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 918.27 50.00 1057.52 -1531.17 52.14

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true


#案内開始フラグを設定
scoreboard players set #temp main_story 14
scoreboard players set #progressing main_story 0
