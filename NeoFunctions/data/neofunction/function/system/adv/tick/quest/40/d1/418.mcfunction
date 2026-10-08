# 命名：418
# 説明：【追加：2026-10-08 ルブラ編】バルドに知らせる：歌の正体は星の声だった。持ち帰った場合はバルドが欠片を預かる。最後に第一章の終わり（419）
# 実行条件：実行者 バルド（村人 812）。#temp main_story 417
# >/function neofunction:system/adv/player_interacted_with_entity/villager/812
# =/function neofunction:system/adv/tick/quest/40/d1/418

# 内容
execute unless score #temp main_story matches 417 run return 0
scoreboard players set #temp main_story 418
data modify storage neofunction:rubra talk set value [{Text:{text:""},Delay:20,Sound:{Sound:"minecraft:block.note_block.bell",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"バルド",color:"#C9784A",bold:true},{text:"> 「戻ったか……！　戻らなかったら、爺さまに何て言やいいかと……」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"バルド",color:"#C9784A",bold:true},{text:"> 「嬢ちゃん、そいつは」"}]},Delay:70,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「バルドさん。歌の正体、わかりました」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「あれは、星の声でした。坑道のいちばん下で、星が、泣いてたんです」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.4}},{Text:{text:"バルドは長いこと黙っていた。それから坑道の暗い口を振り返り、帽子を取って、胸に当てた。鉱夫が、落盤で死んだ仲間に祈るときの仕草だった。",color:"gray",italic:true},Delay:140,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5},Command:"function neofunction:system/adv/tick/quest/40/d1/418_take"},{Text:{text:"",extra:[{text:"<"},{text:"バルド",color:"#C9784A",bold:true},{text:"> 「……深い層には、しばらく誰も入れねえ。俺が決める。……星を、静かに寝かしといてやらなきゃな」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……旅人さん。師匠のこと、オルドさまにも話さなきゃ。でも、その前に……少しだけ、考えさせてください」"}]},Delay:40,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.4},Command:"function neofunction:system/adv/tick/quest/40/d1/419"}]
function neofunction:system/adv/tick/quest/40/d1/talk
