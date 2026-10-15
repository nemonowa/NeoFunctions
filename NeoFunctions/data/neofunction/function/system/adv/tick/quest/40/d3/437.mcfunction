# 命名：437
# 説明：球の広間：金色の楔と四方へ伸びる鎖。欠片を取り込みすぎたセレン「星の声が、聞こえる。もうすぐ――」。会話の最後にボス戦「星喰みのセレン」を始める
# 実行条件：実行者 プレイヤー。#temp main_story 436
# >/function neofunction:system/adv/tick/quest/40/d3/zone
# =/function neofunction:system/adv/tick/quest/40/d3/437

# 内容
execute unless score #temp main_story matches 436 run return 0
scoreboard players set #temp main_story 437
execute if data storage neofunction:rubra d3{retry:1b} run return run function neofunction:entity/skill/boss/rubra_cradle/start
data modify storage neofunction:rubra talk set value [{Text:{text:"球のかたちの広間。壁も床も天井もなく、丸い空間の内側に黒い水が膜のように張りついて、ゆっくりと渦を巻いている。真ん中に浮かぶ石の台に、太い金色の楔。何百本もの鎖が、四方八方へ伸びている。",color:"gray",italic:true},Delay:160,Sound:{Sound:"minecraft:block.chain.place",Pitch:0.5}},{Text:{text:"台の前に、セレンだったものがいた。銀の髪が宙に広がり、肌に赤い光の筋が血管のように走っている。両手に、いくつもの星核の欠片が肉に食いこむように埋まっていた。",color:"gray",italic:true},Delay:160,Sound:{Sound:"minecraft:entity.evoker.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「師匠……！」"}]},Delay:60,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.7}},{Text:{text:"",extra:[{text:"<"},{text:"セレン？",color:"#E05A6A",bold:true},{text:"> 「……ミ、ラ。来て、くれたの。見て。もうすぐ、星が目を覚ます。星の声が、聞こえる。すぐそこに、いる――」"}]},Delay:140,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「師匠、だめ！　それは星の声じゃない！　虚の海が、師匠の中に入りこんでる！」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん、欠片！　まわりの欠片が黒い水を呼んでる！　……砕いても、守り石で抜いても止められる。でも、守り石なら、師匠を傷つけずに……！」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.7},Command:"function neofunction:entity/skill/boss/rubra_cradle/start"}]
function neofunction:system/adv/tick/quest/40/d1/talk
