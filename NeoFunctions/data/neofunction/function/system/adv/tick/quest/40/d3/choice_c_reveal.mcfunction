# 命名：choice_c_reveal
# 説明：【追加：2026-10-09 ルブラ編】選択 C「広場で明かす」：星の広場にみんなが集まり、オルドがすべてを話す。ざわめき、「還せば泉が死ぬ、還さなければ星が死ぬ」、バルド「還そうや」、カシム「水を分ければいい」。trust.town +1
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d3/choice_c
# =/function neofunction:system/adv/tick/quest/40/d3/choice_c_reveal

# 内容
function neofunction:system/adv/tick/quest/40/trust {k:"town"}
data modify storage neofunction:rubra talk set value [{Text:{text:"その日の夕方、星の広場に街の人々が集まった。オルドが、すべてを話した。手記のこと。星のこと。虚の海のこと。約束のこと。",color:"gray",italic:true},Delay:140,Sound:{Sound:"minecraft:block.bell.use",Pitch:0.7}},{Text:{text:"「星を還したら、水がなくなるって？」「子どもたちをどうやって育てろってんだ」「でも、星が死んだら、どっちみち黒い水が溢れるんだろう」",color:"#D8C8A8",italic:true},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"――還せば、泉が死ぬ。還さなければ、星が死ぬ。広場が、しんとなった。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"バルド",color:"#C9784A",bold:true},{text:"> 「――還そうや。四十年、坑道に潜ってきた。あの底で、星が泣いてたんだ。俺たちに掘られて、痛いって。それを聞いちまったら、もう知らねえふりはできねえよ」"}]},Delay:170,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"バルド",color:"#C9784A",bold:true},{text:"> 「水が減るなら、減ったなりに生きりゃいい。昔の人間は、そうやって砂漠で生きてたんだろうが」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「水を、分ければいい。隊商ってのは、水の少ない土地を渡っていく商売だ。少ない水で暮らすやり方なら、いくらでも教えてやれる」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"ざわめきが、少しずつ形を変えはじめた。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8},Command:"function neofunction:system/adv/tick/quest/40/d3/432_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
