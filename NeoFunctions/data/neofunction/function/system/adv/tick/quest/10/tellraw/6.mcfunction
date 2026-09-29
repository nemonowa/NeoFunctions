# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/6


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 921.55 45.00 1055.53 55 11

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute as @a at @s run tellraw @s {"text":"▶ ビリーの案内が始まります。\nビリーは各施設へ移動します。\n発光しているビリーに右クリックで\nその施設の説明を聞くことができます。","color":"#FFD4B8","bold":true,"italic":false}
execute as @a at @s run playsound block.note_block.bell record @s ~ ~ ~ 1.5 2.0


#案内開始フラグを設定
scoreboard players set #temp main_story 2
scoreboard players set #progressing main_story 0