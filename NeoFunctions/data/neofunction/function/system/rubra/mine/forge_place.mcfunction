# 命名：forge_place
# 説明：【追加：2026-10-14 ルブラ編】星鍛冶の金床を置く：右クリックの所（interaction）と名札（text_display）。金床などのブロックの位置で実行する（ブロックはそのまま）
# 実行条件：実行位置 金床のブロックの位置（手で /execute positioned … run function で置く）
# >（手で実行）
# =/function neofunction:system/rubra/mine/forge_place

# 内容
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[tag=rubra_forge_part,distance=..2]
execute align xyz positioned ~0.5 ~ ~0.5 run summon interaction ~ ~ ~ {Tags:["rubra_click","rubra_forge","rubra_forge_part"],width:1.2f,height:1.2f,response:1b}
execute align xyz positioned ~0.5 ~ ~0.5 run summon text_display ~ ~1.5 ~ {Tags:["rubra_forge_part"],billboard:"center",brightness:{block:15,sky:15},background:1426063360,text:{text:"",extra:[{text:"星鍛冶の金床\n",color:"#E8B060",bold:true},{text:"強化する道具を手に持って右クリック",color:"gray"}]}}
execute unless data storage neofunction:rubra forge{v:2} run function neofunction:system/rubra/mine/recipes
