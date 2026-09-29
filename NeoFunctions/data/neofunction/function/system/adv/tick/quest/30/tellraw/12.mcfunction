# 命名：12
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/12

execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=zombie,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=zombie,limit=1] {Invulnerable:0b}
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=frog,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 712 42 2137 run data merge entity @e[distance=..1,type=frog,limit=1] {Invulnerable:0b}

execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=skeleton,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=skeleton,sort=nearest,limit=1] {Invulnerable:0b}
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 713 42 2137 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:0b}

execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:0b}
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 714 42 2138 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:0b}

execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:0b}
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 715 42 2139 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:0b}

execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=zombie,sort=nearest,limit=1] {Invulnerable:0b}
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {NoAI:0b}
execute in neodimension:ceresta_festa positioned 715 42 2140 run data merge entity @e[distance=..1,type=frog,sort=nearest,limit=1] {Invulnerable:0b}
title @a title {"text":"VS かえる軍団！","color":"dark_green","bold":true,"italic":false}

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"カエル軍団を追い払う","color":"white","bold":true,"italic":false,"underlined":false}]

scoreboard players set #temp main_story 36
function neofunction:system/adv/tick/quest/main_end
