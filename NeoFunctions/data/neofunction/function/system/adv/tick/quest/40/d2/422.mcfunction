# 命名：422
# 説明：【追加：2026-10-09 ルブラ編】夜の湖のほとり：カシムの棗の湯と、砂嵐で家族を失った話（水を守ることは、誰かを締め出すことでもある）
# 実行条件：実行者 カシム（村人 905）。#temp main_story 421（選択 A のあと）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/905
# =/function neofunction:system/adv/tick/quest/40/d2/422

# 内容
execute unless score #temp main_story matches 421 run return 0
execute unless data storage neofunction:rubra choice.council run return 0
scoreboard players set #temp main_story 422
data modify storage neofunction:rubra talk set value [{Text:{text:""},Delay:20,Sound:{Sound:"minecraft:block.water.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「ほら、棗の湯だ。砂漠の夜は冷える。……嬢ちゃんの分もな」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「俺は余所者だから、この街の掟のことはよくわからん。だがな、二十年、いろんな街を見てきた。水のある街ってのは、どこでも、何かを隠してるもんさ」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「水は命だ。命を握ってる連中は、その命がどこから来てるかを、あんまり人に話したがらない。話せば、誰かが欲しがるか、誰かが怖がるかするからな」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「俺の家族はな、砂嵐で死んだ。水のある街まで、あと半日のところだった。その街の連中は、門を開けてくれなかった。水が足りなくなるからってな」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.9}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「恨んじゃいない。あいつらも、自分の子どもを守ってただけだ。……ただ、それ以来、思うんだよ。水を守るってことは、誰かを外に締め出すってことでもあるんだって」"}]},Delay:150,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.9}},{Text:{text:"",extra:[{text:"<"},{text:"カシム",color:"#E0A040",bold:true},{text:"> 「あの爺さまが何を締め出してるのか、俺は知らん。だが、締め出されてる側の声ってのは、たいてい、小さくて聞こえにくいもんさ」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"湖の上を、夜風が渡っていく。……明日の朝、ミラは街で師匠の足取りを探すつもりらしい。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.7},Command:"function neofunction:system/adv/tick/quest/40/d2/422_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
