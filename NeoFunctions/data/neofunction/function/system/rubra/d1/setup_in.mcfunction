# 命名：setup_in
# 説明：【追加：2026-10-08 ルブラ編】setup_2 の中身（セレスタ次元で実行）
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/d1/setup_2
# =/function neofunction:system/rubra/d1/setup_in

# 内容
# 古いものを消す（生き物は tag del、それ以外は kill）
tag @e[type=villager,tag=rubra_d1] add del
tag @e[type=ravager,tag=rubra_d1] add del
kill @e[type=!villager,type=!ravager,type=!player,tag=rubra_d1]
# NPC：坑道の入口にバルド、少し奥にミラ（4 マス以内に二人並ぶと話しかけた相手を取り違えるので離す）
execute positioned 885.5 44 3263.5 run function neofunction:asset/summon/812
execute positioned 875.5 44 3265.5 run function neofunction:asset/summon/811
tp @e[type=villager,tag=rubra_baldo] 885.5 44 3263.5 -90 0
tp @e[type=villager,tag=rubra_mira] 875.5 44 3265.5 -90 0
# 星の台：右クリックの当たり判定と、置いた欠片の見た目
summon interaction 832.5 14 3259.5 {Tags:["rubra_click","rubra_ped_n","rubra_d1"],width:1.2f,height:1.8f,response:1b}
summon interaction 823.5 14 3268.5 {Tags:["rubra_click","rubra_ped_w","rubra_d1"],width:1.2f,height:1.8f,response:1b}
summon interaction 832.5 14 3277.5 {Tags:["rubra_click","rubra_ped_s","rubra_d1"],width:1.2f,height:1.8f,response:1b}
summon item_display 832.5 15.35 3259.5 {Tags:["rubra_ped_disp_n","rubra_d1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},brightness:{block:15,sky:15}}
summon item_display 823.5 15.35 3268.5 {Tags:["rubra_ped_disp_w","rubra_d1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},brightness:{block:15,sky:15}}
summon item_display 832.5 15.35 3277.5 {Tags:["rubra_ped_disp_s","rubra_d1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},brightness:{block:15,sky:15}}
# 【追加：2026-10-08】鐘（向きをそろえてから鳴らすと判定）と、西の壁の星読みの古い文字（手がかり）
setblock 840 13 3268 minecraft:bell[attachment=floor,facing=west,powered=false]
summon interaction 840.5 13 3268.5 {Tags:["rubra_click","rubra_bell","rubra_d1"],width:1.1f,height:1.2f,response:1b}
summon text_display 821.3 15.4 3268.5 {Tags:["rubra_d1"],Rotation:[-90.0f,0.0f],billboard:"fixed",line_width:220,background:1426063360,text:{text:"",extra:[{text:"星読みの古い文字\n\n",color:"#C9A27E",italic:true},{text:"北の灯は　",color:"white"},{text:"夕べの赤き星",color:"#FF5A4A",bold:true},{text:"へ\n",color:"white"},{text:"西の灯は　",color:"white"},{text:"夜明けの青き星",color:"#6E9BFF",bold:true},{text:"へ\n",color:"white"},{text:"南の灯は　",color:"white"},{text:"真昼の金の星",color:"#FFD24A",bold:true},{text:"へ\n\n",color:"white"},{text:"三つの星そろうとき　鐘を鳴らせ",color:"#C9A27E",italic:true}]}}
# ガラン・ルーの札の窪み
summon interaction 842.5 25 3283.5 {Tags:["rubra_click","rubra_alcove","rubra_d1"],width:1.4f,height:2.0f,response:1b}
summon item_display 842.5 25.7 3283.2 {Tags:["rubra_alcove_disp","rubra_d1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
# 巨人の像の印
function neofunction:system/rubra/d1/golems
# 記録を初めに戻し、扉を閉じる
data modify storage neofunction:rubra d1 set value {ped:{n:0,w:0,s:0},solved:0b,galan:0b,l4talk:0b,retry:0b,selen:0b}
data remove storage neofunction:rubra busy
function neofunction:system/rubra/d1/gate/close1
function neofunction:system/rubra/d1/gate/close2
function neofunction:system/rubra/d1/gate/close3
