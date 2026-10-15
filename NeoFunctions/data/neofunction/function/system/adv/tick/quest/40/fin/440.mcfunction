# 命名：440
# 説明：終章「星還りの夜」のはじまり：館のミラに話しかけると、素材が 3 つそろったことを喜び、ヴァルカの鍛冶場へ。終章の目印を置く
# 実行条件：実行者 ミラ（村人 902）。#temp main_story 439
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/fin/440

# 内容
execute unless score #temp main_story matches 439 run return 0
scoreboard players set #temp main_story 440
function neofunction:system/rubra/fin/setup
data modify storage neofunction:rubra talk set value [{Text:{text:"水守の館の窓の外で、湖の水が、ゆっくりと黒く渦を巻いている。",color:"gray",italic:true},Delay:80,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん。……血晶と、泉の涙と、楔。これで、三つ、そろいましたね」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「星を傷つけずに送る弓。打てる人は、この街にひとりしかいません」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「星鉄の鍛冶師、ヴァルカさん。鍛冶場は、広場の西です。……行きましょう」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/fin/440_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
