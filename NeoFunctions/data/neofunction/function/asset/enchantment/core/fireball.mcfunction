# 命名：fireball
# 説明：火球を出す。光るブロックの表示を 3 つ、向きを変えて重ね、小さい状態で置く
# 実行条件：爆心として、その位置で（#cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/core/fireball


# 内容
summon minecraft:item_display ~ ~2 ~ {Tags:["neo.nk_fx","neo.nk_ball","neo.nk_new2"],item:{id:"minecraft:pearlescent_froglight",count:1},brightness:{sky:15,block:15},view_range:8f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
summon minecraft:item_display ~ ~2 ~ {Tags:["neo.nk_fx","neo.nk_ball","neo.nk_new2"],item:{id:"minecraft:ochre_froglight",count:1},brightness:{sky:15,block:15},view_range:8f,transformation:{left_rotation:{angle:0.785f,axis:[0f,1f,0f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
summon minecraft:item_display ~ ~2 ~ {Tags:["neo.nk_fx","neo.nk_ball","neo.nk_new2"],item:{id:"minecraft:shroomlight",count:1},brightness:{sky:15,block:15},view_range:8f,transformation:{left_rotation:{angle:0.785f,axis:[0.707f,0f,0.707f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
scoreboard players operation @e[tag=neo.nk_new2] neo.nk_id = #cur neo.nk_id
tag @e[tag=neo.nk_new2] remove neo.nk_new2
