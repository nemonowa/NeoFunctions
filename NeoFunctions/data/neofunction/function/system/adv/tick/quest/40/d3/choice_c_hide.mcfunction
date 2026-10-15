# 命名：choice_c_hide
# 説明：選択 C「伏せる」：オルドと三人だけの短い場面。街の人々は何も知らないまま（終章で灯籠の支えが入らない）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d3/choice_c
# =/function neofunction:system/adv/tick/quest/40/d3/choice_c_hide

# 内容
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「……そうか。ならば、もう少しだけ、わしが背負おう。民には、泉がまた湧くとだけ言っておく」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……わかりました。でも、いつか、ちゃんと」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.3},Command:"function neofunction:system/adv/tick/quest/40/d3/432_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
