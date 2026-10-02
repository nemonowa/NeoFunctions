# 命名：orb
# 説明：黒い球（黒のコンクリートと泣く黒曜石の表示を重ねる。紫に光る縁取り）を、爆心の上 12 に小さく出す
# 実行条件：爆心の位置で（#cur に番号）
# >/function neofunction:asset/enchantment/reiten/start
# =/function neofunction:asset/enchantment/reiten/orb


# 内容
summon minecraft:item_display ~ ~12 ~ {Tags:["neo.nk_fx","neo.nk_orb","neo.nk_new2"],item:{id:"minecraft:black_concrete",count:1},view_range:8f,Glowing:1b,glow_color_override:10040319,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
summon minecraft:item_display ~ ~12 ~ {Tags:["neo.nk_fx","neo.nk_orb","neo.nk_new2"],item:{id:"minecraft:crying_obsidian",count:1},view_range:8f,brightness:{sky:15,block:15},transformation:{left_rotation:{angle:0.785f,axis:[0.707f,0f,0.707f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
scoreboard players operation @e[tag=neo.nk_new2] neo.nk_id = #cur neo.nk_id
tag @e[tag=neo.nk_new2] remove neo.nk_new2
