# 命名：start
# 説明：超新星の開始。使用中にし、足元に爆心（マーカー）を置いて、進行を動かす
# 実行条件：ためが 60 になったプレイヤー
# >/function neofunction:asset/enchantment/choushinsei/charge
# =/function neofunction:asset/enchantment/choushinsei/start


# 内容
execute if score @s neo.nk_st matches 1000.. run return fail
execute unless score @s neo.nk_id matches 1.. store result score @s neo.nk_id run scoreboard players add #nk_next temp 1
scoreboard players set @s neo.nk_st 1000
scoreboard players operation #nk_cur temp = @s neo.nk_id
summon minecraft:marker ~ ~ ~ {Tags:["neo.nuke","neo.nk_new"],data:{kind:4,t:0,r:-1,h:0,v:0}}
scoreboard players operation @e[type=marker,tag=neo.nk_new] neo.nk_id = #nk_cur temp
tag @e[type=marker,tag=neo.nk_new] remove neo.nk_new
summon minecraft:item_display ~ ~1 ~ {Tags:["neo.nk_fx","neo.nk_core","neo.nk_new2"],item:{id:"minecraft:pearlescent_froglight",count:1},brightness:{sky:15,block:15},view_range:8f,teleport_duration:1,Glowing:1b,glow_color_override:16777215,transformation:{left_rotation:{angle:0.785f,axis:[0.707f,0f,0.707f]},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
scoreboard players operation @e[tag=neo.nk_new2] neo.nk_id = #nk_cur temp
tag @e[tag=neo.nk_new2] remove neo.nk_new2
effect give @s minecraft:glowing 6 0 true
title @s actionbar {"text":"超新星 ――臨界","color":"aqua","bold":true}
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 12 0.5
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 12 0.6
