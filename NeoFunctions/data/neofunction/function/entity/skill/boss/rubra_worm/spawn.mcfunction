# 命名：spawn
# 説明：【追加：2026-10-08 ルブラ編】星喰い蟲を出す：本体（810）・頭の見た目・体の節 12・当たり判定 12。動きの記録（hist）を今の位置で埋め、最初の狙いを決める
# 実行条件：実行位置 真ん中の穴の下（812.5, -46, 3268.5）
# >/function neofunction:system/adv/tick/quest/40/d1/boss_start
# =/function neofunction:entity/skill/boss/rubra_worm/spawn

# 内容
kill @e[tag=rubra_worm_part]
function neofunction:asset/summon/810
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_worm_head","rubra_d1"],block_state:{id:"minecraft:sculk_catalyst"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.3f,0f,-1.3f],scale:[2.6f,2.6f,2.6f]},teleport_duration:2,brightness:{block:8,sky:8}}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg1","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit1","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg2","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit2","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg3","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit3","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg4","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit4","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg5","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit5","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg6","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit6","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg7","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit7","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg8","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit8","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg9","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit9","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg10","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit10","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg11","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit11","rubra_d1"],width:2.2f,height:2.2f,response:1b}
summon block_display ~ ~ ~ {Tags:["rubra_worm_part","rubra_seg","rubra_seg12","rubra_d1"],block_state:{id:"minecraft:blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,2f,2f]},teleport_duration:2}
summon interaction ~ ~ ~ {Tags:["rubra_worm_part","rubra_hit","rubra_hit12","rubra_d1"],width:2.2f,height:2.2f,response:1b}
data modify storage neofunction:rubra worm set value {state:"under",glow:0,flash:0b,ft:0,phase:1,hint:0b,d:0,t:0,hist:[],goal:{x:812.5d,y:-46.0d,z:3268.5d,s:0.8d}}
data modify storage neofunction:rubra worm.p set value {x:812.5d,y:-46.0d,z:3268.5d}
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
data modify storage neofunction:rubra worm.hist append from storage neofunction:rubra worm.p
execute as @e[type=ravager,tag=rubra_worm,limit=1] at @s run function neofunction:entity/skill/boss/rubra_worm/plan
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ ~10 ~ 2 0.4
