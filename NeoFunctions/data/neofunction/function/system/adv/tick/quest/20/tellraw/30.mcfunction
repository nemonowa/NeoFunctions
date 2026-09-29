# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/20/tellraw/30


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run tp @s 867.61 54.00 1582.30 540.34 47.66

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/102"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"全ての祭壇の試練を踏破しアンカーを解析する","color":"white","bold":true,"italic":false,"underlined":false}]

tellraw @a {"text":"tips:四元素の祭壇へ挑むには「試練の鍵」が必要です。","color":"white","bold":true,"italic":false}
tellraw @a {"text":"素材を集めてルミスに鍵を作成してもらい、祭壇を攻略しましょう。","color":"white","bold":true,"italic":false}
tellraw @a {"text":"攻略条件のアンカーを解析後、シェーラに話しかけることでメインクエストが進行します","color":"white","bold":true,"italic":false}
tellraw @a {"text":"推奨レベル:20+","color":"white","bold":true,"italic":false}

#案内開始フラグを設定
scoreboard players set #temp main_story 24
