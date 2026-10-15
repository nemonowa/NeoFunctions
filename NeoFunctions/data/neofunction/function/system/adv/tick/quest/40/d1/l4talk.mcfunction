# 命名：l4talk
# 説明：星の台の間でミラが古い文字を読む（謎解きの手がかり）。一度だけ
# 説明：謎解きを「光の色と星の色を合わせて、鐘で決める」形にしたので、説明を合わせた
# 実行条件：実行者 プレイヤー。#temp main_story 412
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# =/function neofunction:system/adv/tick/quest/40/d1/l4talk

# 内容
execute if data storage neofunction:rubra d1{l4talk:1b} run return 0
data modify storage neofunction:rubra d1.l4talk set value 1b
data modify storage neofunction:rubra talk set value [{Text:{text:""},Delay:20,Sound:{Sound:"minecraft:block.note_block.bell",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「西の壁に、星読みの古い文字が刻まれてます。……『三つの星そろうとき、鐘を鳴らせ』」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「縦穴をのぞいてみてください。レールをふさぐ岩の上に、赤と、青と、金の光が浮いてる。あれが三つの星なんだと思います」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「台に欠片を置くと光が出て、もう一度触ると向きが変わる。光は、当たった星と同じ色になるみたいです」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「壁の文字のとおりに、三つの台の光を星へ向けて……そろったら、そこの鐘を鳴らしましょう」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"台に星核の欠片を手に持って右クリックで置く。置いた台を右クリックで光の向きが変わる。向きをそろえたら鐘を右クリック。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8},Command:"data remove storage neofunction:rubra busy"}]
function neofunction:system/adv/tick/quest/40/d1/talk
