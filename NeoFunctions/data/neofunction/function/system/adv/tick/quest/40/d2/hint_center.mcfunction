# 命名：hint_center
# 説明：三つの水門の間に初めて入ったときの説明（一度だけ）：水は合わせて 2 つぶん。どの部屋が、何つぶんで開くか
# 実行条件：実行者 プレイヤー。#temp main_story 425
# >/function neofunction:system/adv/tick/quest/40/d2/zone
# =/function neofunction:system/adv/tick/quest/40/d2/hint_center

# 内容
data modify storage neofunction:rubra d2.hint_center set value 1b
data modify storage neofunction:rubra talk set value [{Text:{text:"真ん中の部屋から、東・西・北の三つの部屋へ水路が分かれている。どの部屋の入口にもガラスの柱があり、今は北の柱だけが水でいっぱいだ。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:block.water.ambient",Pitch:0.8}},{Text:{text:"壁の刻み：「東の橋は、二つの水で浮かぶ」「西の水車は、一つの水で回る。満たせば止まる」「北の扉は、乾いたときに開く」",color:"#7FD8FF",italic:true},Delay:140,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「ひとつの部屋に水を入れると、ほかの部屋の水が減る……聖堂ぜんぶで、水の量は決まってるんだ。どの部屋に水を回すかで、開く道が変わるんだと思います」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"三つの輪は、右クリックするたびにその部屋へ水を 1 つぶん足す。真ん中の溜めに水が無いときは、回しきるとその部屋の水が溜めに戻る。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8},Command:"data remove storage neofunction:rubra busy"}]
function neofunction:system/adv/tick/quest/40/d1/talk
