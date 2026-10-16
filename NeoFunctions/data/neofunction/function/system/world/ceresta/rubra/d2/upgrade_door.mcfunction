# 命名：upgrade_door
# 説明：館の扉を壁と同じ石の隠し扉にしたのを、今のワールドに一度だけ反映する（d2v が 2 より前のとき。upgrade_20261014 から）。ずれた扉の目印と右クリックの所を元の位置に置き直し、扉の西の壁の穴（957, 45〜46）を埋める
# 実行条件：どこでも（館のチャンクが読み込まれているとき）
# >/function neofunction:system/world/ceresta/rubra/d2/upgrade_20261014
# =/function neofunction:system/world/ceresta/rubra/d2/upgrade_door

# 内容
# 目印と右クリックの所を置き直す
execute in neodimension:ceresta_festa positioned 959.5 45 3268.5 run kill @e[type=marker,tag=rubra_door_gate,distance=..16]
execute in neodimension:ceresta_festa positioned 959.5 45 3268.5 run kill @e[type=interaction,tag=rubra_gate,distance=..16]
execute in neodimension:ceresta_festa run summon marker 959.5 45 3268.5 {Tags:["rubra_d2","rubra_door","rubra_door_gate","rubra_door_wall"]}
execute in neodimension:ceresta_festa run summon interaction 959.5 45 3269.2 {Tags:["rubra_click","rubra_d2","rubra_gate"],width:3.0f,height:3.0f,response:1b}
# 扉の西の壁を元に戻す
execute in neodimension:ceresta_festa run setblock 957 45 3268 minecraft:smooth_sandstone
execute in neodimension:ceresta_festa run setblock 957 46 3268 minecraft:light_blue_terracotta
execute in neodimension:ceresta_festa run setblock 957 47 3268 minecraft:smooth_sandstone
# 扉：もう開けたあと（d2.gate）なら開いたまま、まだなら壁と同じ石で閉じる
execute in neodimension:ceresta_festa run fill 958 45 3268 960 47 3268 minecraft:air
execute unless data storage neofunction:rubra d2{gate:1b} in neodimension:ceresta_festa as @e[type=marker,tag=rubra_door_wall] at @s run function neofunction:system/world/ceresta/rubra/d2/door/close
