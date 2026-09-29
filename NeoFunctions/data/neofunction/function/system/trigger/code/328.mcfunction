# 命名：328（旧:99）
# 説明：トリガー
# >/function neofunction:system/trigger/code
# >/function neofunction:entity/.spawn/obj/item/cmd/995
# =/function neofunction:system/trigger/code/328


# 内容：
clear @s minecraft:written_book[minecraft:custom_model_data={floats:[996.0f]}]
summon glow_item_frame ~ ~ ~ {Silent:1b,Invisible:1b,Tags:["del","item"],Item:{id:"written_book"}}
tag @s add emblem
function neofunction:asset/name/get
loot replace entity @e[distance=..3,tag=item,limit=1,sort=nearest] container.0 loot neofunction:item/other/996
summon text_display ~ ~ ~ {Tags:["del","resolve"],text:"",view_range:0,alignment:"center"}
#一度テキストディスプレイに入れることでOPがなくても見れるように
# 【変更：2026-09-27 26.3対応】26.3 では本のページが written_book_content.pages[N].raw に保存される（Filterable形式、要実機確認）
data modify entity @e[tag=resolve,limit=1,sort=nearest,distance=..3] text set from entity @e[tag=item,limit=1,sort=nearest,distance=..3] Item.components."minecraft:written_book_content".pages[0].raw
data modify entity @e[tag=item,limit=1,sort=nearest,distance=..3] Item.components."minecraft:written_book_content".pages[0].raw set from entity @e[tag=resolve,limit=1,sort=nearest] text
data modify entity @e[tag=resolve,limit=1,sort=nearest,distance=..3] text set from entity @e[tag=item,limit=1,sort=nearest,distance=..3] Item.components."minecraft:written_book_content".pages[1].raw
data modify entity @e[tag=item,limit=1,sort=nearest,distance=..3] Item.components."minecraft:written_book_content".pages[1].raw set from entity @e[tag=resolve,limit=1,sort=nearest] text
#アイテム取り出し
#1tickで回収しないと消滅する
damage @e[tag=item,limit=1,sort=nearest,distance=..3] 1 out_of_world
data modify entity @e[type=item,tag=!check,limit=1,sort=nearest,nbt={Item:{id:"minecraft:written_book"}}] PickupDelay set value 0s
#ごみ処理
kill @e[tag=item,limit=1,sort=nearest,distance=..3]
kill @e[tag=resolve,limit=1,sort=nearest,distance=..3]
tag @s remove emblem
function neofunction:asset/particle/transform0

