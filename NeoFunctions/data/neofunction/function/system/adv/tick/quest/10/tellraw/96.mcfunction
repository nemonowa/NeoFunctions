# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/96


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/611"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/611"},sort=nearest,limit=1] at @s run tp @s 921.56 50.00 1052.40 -4548.76 -3.14

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/611"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/611"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute in neodimension:ceresta_festa run forceload remove 921 1052

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"一度野営地に戻ってビリーに報告する","color":"white","bold":true,"italic":false,"underlined":false}]

execute as @a at @s run tellraw @s [{"text":"▶ このままダンジョンへ挑戦することもできます。\nしかし、メインストーリーを進める前に","color":"#FFD4B8","bold":true,"italic":false},{"text":"ビリーへ報告","color":"#55FFFF","underlined":true},{"text":"しておくことをおすすめします。\nより自然な流れで物語を楽しめます。","color":"#FFD4B8","bold":true,"italic":false}]


execute as @a at @s run playsound entity.player.levelup record @s ~ ~ ~ 2.0 0.7

#案内開始フラグを設定
scoreboard players set #temp main_story 17
scoreboard players set #progressing main_story 0