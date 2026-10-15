# 命名：choice_b_stop
# 説明：選択 B「止める」
# 説明：セレンは「それが、あなたの選択なのね」と受け止め、ほかの選択と同じく最初の泉の話をして去る（428_end）
# 実行条件：実行者 プレイヤー。#temp main_story 428
# >/function neofunction:system/adv/tick/quest/40/d2/choice_b
# =/function neofunction:system/adv/tick/quest/40/d2/choice_b_stop

# 内容
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"旅人",color:"#1E90FF",bold:true},{text:"> 「星を還せば、街が死ぬ。ここで、止める」"}]},Delay:80,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん！？　師匠――」"}]},Delay:70,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.7}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「……そう。それが、あなたの選択なのね」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"セレンは、杖を下ろした。戦う気配は、はじめからなかった。",color:"gray",italic:true},Delay:90,Sound:{Sound:"minecraft:block.amethyst_block.chime",Pitch:0.7}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「止めたいなら、止めればいい。でも、その前に知って。この聖堂のいちばん奥に、最初の泉がある。そこに、星の涙が残っているはず。……持っていきなさい」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「ミラ。……あなたは、自分の耳で聞いたものを、信じなさい。院の書物でも、オルドでも、わたしでもなく」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0},Command:"function neofunction:system/adv/tick/quest/40/d2/428_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
