# 命名：choice_take
# 説明：選択「持ち帰る」：鉱夫たちが喜ぶ（あとで採掘の報酬が増える：storage neofunction:rubra choice.field "take"）。星核の欠片を 8 つ手に入れる
# 実行条件：実行者 プレイヤー。#temp main_story 416
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/adv/tick/quest/40/d1/choice_take

# 内容
execute unless score #temp main_story matches 416 run return 0
execute if data storage neofunction:rubra choice.field run return 0
data modify storage neofunction:rubra choice.field set value "take"
kill @e[tag=rubra_choice]
function neofunction:system/adv/tick/quest/40/d1/give_fragments
function neofunction:system/adv/tick/quest/40/d1/give_fragments
data modify storage neofunction:rubra talk set value [{Text:{text:"残った星核の花を摘んで、ミラの袋に入れた。袋の中で、欠片がかすかに震えた気がした。",color:"gray",italic:true},Delay:100,Sound:{Sound:"minecraft:block.amethyst_cluster.break",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「バルドさんたち、きっと喜びますね。……大事に使ってもらわなきゃ」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……地上へ戻りましょう。バルドさんに、知らせなきゃ」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d1/417"}]
function neofunction:system/adv/tick/quest/40/d1/talk
