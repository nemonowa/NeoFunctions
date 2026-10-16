# 命名：upgrade_20261014
# 説明：紅脈の坑の作り直しを、今のワールドに一度だけ反映する（迷宮に入ったとき、rubra1 から。storage neofunction:rubra d1v 7 で済み）。手がかりの文字は暗い所でも読めるように明るさ 15
# 説明：ブロック（二の層の迷路・縦穴の囲い・穴の蓋）は region に直接入れた。ここではエンティティと宝箱の中身：二の層の手がかり 3 つ（古いものは消す）、宝箱の戦利品の表、三の層の光の橋のボタン。謎が解けていれば縦穴の囲いを外す。砂の亡者を消す
# 実行条件：実行者 プレイヤー（迷宮の中）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/world/ceresta/rubra/d1/upgrade_20261014

# 内容
data modify storage neofunction:rubra d1v set value 7
execute in neodimension:ceresta_festa run kill @e[type=marker,tag=rubra_golem]
execute in neodimension:ceresta_festa positioned 834.5 37.6 3262.7 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa positioned 841.5 37.6 3262.7 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa positioned 834.5 37.6 3266.3 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa positioned 831.0 37.6 3241.7 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa positioned 815.3 37.6 3241.0 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa positioned 831.0 37.6 3259.7 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa run summon text_display 831.0 37.6 3241.7 {Tags:["rubra_d1"],Rotation:[180.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},line_width:200,background:1426063360,text:{text:"",extra:[{text:"鉱夫の刻み\n",color:"#C9A27E",italic:true},{text:"北の灯は\n",color:"white"},{text:"夕べの赤き星",color:"#FF5A4A",bold:true},{text:"へ",color:"white"}]}}
execute in neodimension:ceresta_festa run summon text_display 815.3 37.6 3241.0 {Tags:["rubra_d1"],Rotation:[-90.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},line_width:200,background:1426063360,text:{text:"",extra:[{text:"鉱夫の刻み\n",color:"#C9A27E",italic:true},{text:"西の灯は\n",color:"white"},{text:"夜明けの青き星",color:"#6E9BFF",bold:true},{text:"へ",color:"white"}]}}
execute in neodimension:ceresta_festa run summon text_display 831.0 37.6 3259.7 {Tags:["rubra_d1"],Rotation:[180.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},line_width:200,background:1426063360,text:{text:"",extra:[{text:"鉱夫の刻み\n",color:"#C9A27E",italic:true},{text:"南の灯は\n",color:"white"},{text:"真昼の金の星",color:"#FFD24A",bold:true},{text:"へ",color:"white"}]}}
execute in neodimension:ceresta_festa run data merge block 812 36 3234 {LootTable:"neofunction:chest/2"}
execute in neodimension:ceresta_festa positioned 845.5 25.75 3284.25 run kill @e[type=interaction,tag=rubra_l3bridge,distance=..2]
execute in neodimension:ceresta_festa run summon interaction 845.5 25.75 3284.25 {Tags:["rubra_click","rubra_d1","rubra_l3bridge"],width:0.7f,height:0.9f,response:1b}
execute if data storage neofunction:rubra d1{solved:1b} run function neofunction:system/world/ceresta/rubra/d1/shaft_open
execute in neodimension:ceresta_festa run kill @e[type=husk,tag=rubra_sanddead]
# 迷路の入口の刻みは消す。四の層の古い文字は置き直す
execute in neodimension:ceresta_festa run kill @e[type=text_display,tag=rubra_l2sign]
execute in neodimension:ceresta_festa positioned 821.3 15.4 3268.5 run kill @e[type=text_display,tag=rubra_d1,distance=..0.6]
execute in neodimension:ceresta_festa run summon text_display 821.3 15.4 3268.5 {Tags:["rubra_d1"],Rotation:[-90.0f,0.0f],billboard:"fixed",brightness:{block:15,sky:15},line_width:220,background:1426063360,text:{text:"",extra:[{text:"星読みの古い文字\n\n",color:"#C9A27E",italic:true},{text:"三つの灯の行き先は\n白い層の迷い路の奥に　鉱夫が刻んだ\n\n",color:"white"},{text:"三つの星そろうとき　鐘を鳴らせ",color:"#C9A27E",italic:true}]}}
# ガラン・ルーの札の窪みを撤去（右クリックの所と札の見た目を消し、飾りのブロックをまわりと同じテラコッタに）
execute in neodimension:ceresta_festa run kill @e[tag=rubra_alcove]
execute in neodimension:ceresta_festa run kill @e[tag=rubra_alcove_disp]
execute in neodimension:ceresta_festa run setblock 842 25 3282 minecraft:orange_terracotta
execute in neodimension:ceresta_festa run setblock 842 26 3282 minecraft:light_gray_terracotta
execute in neodimension:ceresta_festa run setblock 842 24 3283 minecraft:white_terracotta
