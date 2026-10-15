# 命名：selen
# 説明：星還りの空にセレンを立たせる（再戦・エリートチャレンジの受付）。姿は mannequin、話しかける所は interaction（rubra_click の振り分けで refight/talk へ）
# 説明：タグ rubra_sky_selen（報酬の片付けや終章の片付けでは消えず、reset_2 で消す）
# 実行条件：セレスタ次元（reward/build から）
# >/function neofunction:system/rubra/fin/reward/build
# =/function neofunction:system/rubra/fin/refight/selen

# 内容
kill @e[tag=rubra_sky_selen]
summon mannequin 921.5 200 3274.5 {Rotation:[0.0f,0.0f],Invulnerable:1b,Silent:1b,PersistenceRequired:1b,CustomName:{"text":"セレン","color":"#C8D0FF","bold":true,"italic":false},CustomNameVisible:1b,Tags:["check","rubra_sky_selen"],hide_description:1b,immovable:1b,equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3487029}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3487029}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3487029}},mainhand:{id:"minecraft:stick",count:1}}}
summon interaction 921.5 200 3274.5 {Tags:["check","rubra_sky_selen","rubra_click","rubra_skyselen"],width:1.0f,height:2.0f,response:1b}
