# 命名：spear
# 説明：巨大な槍（ネザライトの槍の表示を 24 倍）を、上空 120 ブロックに十字に 2 本重ねて出す
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/spear


# 内容
summon minecraft:item_display ~ ~120 ~ {Tags:["neo.nk_fx","neo.nk_spear","neo.nk_new2"],item:{id:"minecraft:netherite_spear",count:1},brightness:{sky:15,block:15},view_range:8f,teleport_duration:2,Glowing:1b,glow_color_override:16744448,transformation:{left_rotation:{angle:-2.356f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[24f,24f,24f]}}
summon minecraft:item_display ~ ~120 ~ {Tags:["neo.nk_fx","neo.nk_spear","neo.nk_new2"],item:{id:"minecraft:netherite_spear",count:1},brightness:{sky:15,block:15},view_range:8f,teleport_duration:2,Glowing:1b,glow_color_override:16744448,Rotation:[90f,0f],transformation:{left_rotation:{angle:-2.356f,axis:[0f,0f,1f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[24f,24f,24f]}}
scoreboard players operation @e[tag=neo.nk_new2] neo.nk_id = #nk_cur temp
tag @e[tag=neo.nk_new2] remove neo.nk_new2
scoreboard players set #nk_h temp 1200
scoreboard players set #nk_v temp 5
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 20 0.5
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 20 0.5
