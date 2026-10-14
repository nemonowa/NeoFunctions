# 命名：425
# 説明：【追加：2026-10-09 ルブラ編】聖堂の入口の広間：昔の水守の通り道。水で開く扉と、青銅の輪・水量の柱の説明（練習）
# 実行条件：実行者 プレイヤー。#temp main_story 424
# >/function neofunction:system/adv/tick/quest/40/d2/zone
# =/function neofunction:system/adv/tick/quest/40/d2/425

# 内容
execute unless score #temp main_story matches 424 run return 0
scoreboard players set #temp main_story 425
data modify storage neofunction:rubra talk set value [{Text:{text:"涸れ泉の聖堂。青い石の柱が並び、柱のあいだを水路がめぐっている。水路のほとんどは干上がり、底に白い塩の筋が残っているだけ。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:ambient.underwater.loop.additions",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「昔の水守の、通り道だ。……この聖堂は、ルブラの水が最初に湧いた場所を祀ってる、って書いてあります」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「この扉、水で開くみたい。あの青銅の輪を回すと、ガラスの柱に水が入って……水が扉の印の線まで届いたら、浮きが上がって開くんだと思います」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"青銅の輪を右クリックすると、柱の水位が変わる。柱の水が印の線（2）に届くと、扉が開く。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8},Command:"data remove storage neofunction:rubra busy"}]
function neofunction:system/adv/tick/quest/40/d1/talk
