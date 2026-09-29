# 命名：29
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/29
execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] at @s run function neofunction:entity/villager/103/mainquest
execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/764"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"黄金麦の大聖堂に赴き、司祭フェイスに話しかける。","color":"white","bold":true,"italic":false,"underlined":false}]

execute in neodimension:ceresta_festa run forceload remove 959 2265
scoreboard players set #temp main_story 44
function neofunction:system/adv/tick/quest/main_end

