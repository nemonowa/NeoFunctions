# 命名：journals_2
# 説明：手記の置き場：古いもの（タグ rubra_jpick）を消して、当たり判定と本の見た目を置く。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/journals
# =/function neofunction:system/world/ceresta/rubra/journals_2

# 内容
execute in neodimension:ceresta_festa run kill @e[tag=rubra_jpick]
# その一：星見の塔の一階の書見台
execute in neodimension:ceresta_festa run summon interaction 918.5 47 3282.5 {Tags:["rubra_click","rubra_jpick","rubra_pick_jf","rubra_pick_j1"],width:1.0f,height:1.2f,response:1b}
# その三：洗い場のそば（子どもたちの手まり歌の近く）
execute in neodimension:ceresta_festa run summon interaction 936.5 44 3288.5 {Tags:["rubra_click","rubra_jpick","rubra_pick_jf","rubra_pick_j3"],width:0.9f,height:0.6f,response:1b}
execute in neodimension:ceresta_festa run summon item_display 936.5 44.15 3288.5 {Tags:["rubra_jpick"],item:{id:"minecraft:written_book",count:1},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
# その四：鉱夫の坑道の入口
execute in neodimension:ceresta_festa run summon interaction 880.5 44 3263.5 {Tags:["rubra_click","rubra_jpick","rubra_pick_jf","rubra_pick_j4"],width:0.9f,height:0.6f,response:1b}
execute in neodimension:ceresta_festa run summon item_display 880.5 44.15 3263.5 {Tags:["rubra_jpick"],item:{id:"minecraft:written_book",count:1},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute in neodimension:ceresta_festa run forceload remove 870 3255 945 3295
