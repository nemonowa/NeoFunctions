# 命名：434
# 説明：浮遊の間でミラに追いつく：重さが無い。宙に浮いた足場を、青く光る縁をたどって渡る。ミラは闇の間の入口へ先に行く
# 実行条件：実行者 プレイヤー。#temp main_story 433
# >/function neofunction:system/adv/tick/quest/40/d3/zone
# =/function neofunction:system/adv/tick/quest/40/d3/434

# 内容
execute unless score #temp main_story matches 433 run return 0
scoreboard players set #temp main_story 434
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん、体が……軽い。重さが、無いんです」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「どっちが上なのか、わからなくなりそう。……あの足場の縁、青く光ってる。光をたどれば、下へ行けるはず」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"跳ぶと高く浮き、ゆっくり落ちる。青く光る縁の足場を渡っていく。落ちても、下の受け皿から登り直せる。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8},Command:"function neofunction:system/adv/tick/quest/40/d3/mira_go {to:\"c2\"}"}]
function neofunction:system/adv/tick/quest/40/d1/talk
