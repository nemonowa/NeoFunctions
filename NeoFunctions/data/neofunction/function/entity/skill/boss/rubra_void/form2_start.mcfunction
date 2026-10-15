# 命名：form2_start
# 説明：第 2 形態へ（体力 700 以下）：黒い巨影が内側から赤く裂け、半ば呑まれた星「ヴォイド・ゼロ」になって、空高く（10 マス上）へ逃れる。柱は消える
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/form2_start

# 内容
data modify storage neofunction:rubra fin merge value {form:2,ckpt:2,a:0,c:0,pull:0,rw:0,at:0,win:0,drag:0,lt:0,vul:0b}
kill @e[type=marker,tag=rubra_fin_mark]
function neofunction:entity/skill/boss/rubra_void/pillars_off
data modify entity @s CustomName set value {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true,"italic":false}
kill @e[type=block_display,tag=rubra_void_shell]
kill @e[type=block_display,tag=rubra_void_black,limit=8,sort=random]
summon block_display ~ ~ ~ {Tags:["rubra_fin","rubra_void_part","rubra_void_star"],block_state:{id:"minecraft:shroomlight"},brightness:{block:15,sky:15},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-3f,-3f,-3f],scale:[6f,6f,6f]},view_range:6.0f}
summon block_display ~ ~ ~ {Tags:["rubra_fin","rubra_void_part","rubra_void_star"],block_state:{id:"minecraft:red_stained_glass"},brightness:{block:15,sky:15},teleport_duration:2,transformation:{left_rotation:[0.38f,0f,0f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[-4f,-4f,-4f],scale:[8f,8f,8f]},view_range:6.0f}
tp @s ~ ~10 ~
execute as @e[type=block_display,tag=rubra_void_part] at @s run tp @s ~ ~10 ~
particle minecraft:flash{color:[1.0,0.3,0.2,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
particle minecraft:dust{color:[1.0,0.25,0.2],scale:3.0} ~ ~ ~ 5 5 5 0 300 force @a[distance=..128]
playsound minecraft:entity.wither.spawn hostile @a[distance=..128] ~ ~ ~ 2 0.7
title @a[distance=..128] subtitle {"text":"第 2 形態　虚の海に半ば呑まれ、空高く逃れる星","color":"gray"}
title @a[distance=..128] title {"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true}
tellraw @a[distance=..128] {"text":"――いたい。　――こわい。　――かえりたい。","color":"#FF7B7B","italic":true}
tellraw @a[distance=..128] [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「星が空へ逃げた……！ もう一度、柱を八本灯して。光の鎖で、星を舞台へ引きずり下ろすの！」"}]
tellraw @a[distance=..128] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「星が下りてきたら、星還しの矢を！ 黒い水を焼けるのは、その弓だけ！」"}]
