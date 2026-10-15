# 命名：421
# 説明：水守の館の会議：オルド「セレンを捕らえよ」、ミラが言い返す。最後に選択 A（チャット：4211 ミラにつく／4212 オルドにつく／4213 黙る）
# 実行条件：実行者 オルド（村人 904）。#temp main_story 420
# >/function neofunction:system/adv/player_interacted_with_entity/villager/904
# =/function neofunction:system/adv/tick/quest/40/d2/421

# 内容
execute unless score #temp main_story matches 420 run return 0
scoreboard players set #temp main_story 421
data modify storage neofunction:rubra talk set value [{Text:{text:"夜の水守の館。卓の上で、星の血晶が燭台の火よりも赤く部屋を照らしている。水守たち、星読み院の老人たち、鉱夫頭のバルド、隊商のカシム。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「セレンを捕らえよ」"}]},Delay:80,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「星核の欠片を盗み、坑道を崩し、街の泉を枯らした。理由がどうあれ、許されることではない。見つけしだい、館へ引き立てよ」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「待ってください！　泉を枯らしたのが師匠だって、どうしてわかるんですか。わたしたちが見たのは、星を食べる蟲です。あの蟲が、下から――」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「蟲が出たのは、セレンが星核を持ち出したあとだ」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「師匠は、理由もなく盗んだりしません！　……オルドさまは、その理由を、知ってるんじゃないですか」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.7}},{Text:{text:"館が、しんと静まりかえった。オルドは何も言わず、灰色の目でただミラを見ている。……その目が、旅人に向いた。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.bell",Pitch:0.8},Command:"function neofunction:system/adv/tick/quest/40/d2/choice_a_show"}]
function neofunction:system/adv/tick/quest/40/d1/talk
