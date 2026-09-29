# 命名：19
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/19


execute in neodimension:ceresta_festa run fill 690 44 2225 692 44 2227 air destroy
execute in neodimension:ceresta_festa run setblock 690 44 2227 minecraft:vine[east=false,north=false,south=false,up=false,west=true]
execute in neodimension:ceresta_festa run setblock 690 44 2226 minecraft:vine[east=false,north=false,south=false,up=false,west=true]
execute in neodimension:ceresta_festa run setblock 690 44 2225 minecraft:vine[east=false,north=false,south=false,up=false,west=true]
execute in neodimension:ceresta_festa run forceload remove 691 2226

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] at @s run tp @s 676 48 2197

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"ルクス地下水路第一層のアンカーを解析し、商会長ニールに報告する。","color":"white","bold":true,"italic":false,"underlined":false}]



scoreboard players set #temp main_story 39
function neofunction:system/adv/tick/quest/main_end
