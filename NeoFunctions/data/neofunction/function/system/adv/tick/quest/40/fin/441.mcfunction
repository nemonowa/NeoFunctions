# 命名：441
# 説明：【追加：2026-10-09 ルブラ編】鍛冶場：3 つの素材を受け取ったヴァルカが、三日三晩かけて専用の弓「星還しの弓」を打つ（give_relics）
# 説明：【変更：2026-10-09】渡すのは弓だけ（鎧は無し）。この弓の矢だけがヴォイド・ゼロに深く刺さり、黒い心臓を一矢で砕く
# 実行条件：実行者 プレイヤー（3 つの素材を持っている）。#temp main_story 440
# >/function neofunction:system/adv/player_interacted_with_entity/villager/912
# =/function neofunction:system/adv/tick/quest/40/fin/441

# 内容
execute unless score #temp main_story matches 440 run return 0
scoreboard players set #temp main_story 441
clear @s minecraft:resin_brick[minecraft:custom_model_data={floats:[1905.0f]}] 1
clear @s minecraft:ghast_tear[minecraft:custom_model_data={floats:[1907.0f]}] 1
clear @s minecraft:gold_nugget[minecraft:custom_model_data={floats:[1918.0f]}] 1
playsound minecraft:block.anvil.place block @a[distance=..16] ~ ~ ~ 1 0.8
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"ヴァルカ",color:"#D9822B",bold:true},{text:"> 「……ほう。血晶に、泉の涙に、楔か。ばあさんのばあさんの、そのまたばあさんの図面にある素材だ」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.9}},{Text:{text:"ヴァルカは、三つの素材を炉に入れた。赤と、青と、金。三つの色は、はじめは混ざろうとしなかった。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:block.fire.ambient",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"ヴァルカ",color:"#D9822B",bold:true},{text:"> 「混ぜるんじゃない。並べるんだ。……血は痛み。涙は悲しみ。楔は約束。星が、この街で味わったもの、ぜんぶだ」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.9}},{Text:{text:"かん。　――赤が、細い弦になった。",color:"#D7263D",italic:true},Delay:60,Sound:{Sound:"minecraft:block.anvil.use",Pitch:0.8}},{Text:{text:"かん。　――青が、しなやかな弓身になった。",color:"#7FB3FF",italic:true},Delay:60,Sound:{Sound:"minecraft:block.anvil.use",Pitch:0.9}},{Text:{text:"かん。　――金が、星の形の握りになった。",color:"#F2C94C",italic:true},Delay:80,Sound:{Sound:"minecraft:block.anvil.use",Pitch:1.0}},{Text:{text:"四日目の朝。ヴァルカは、夜明けの空の色をした、細い弓を持って現れた。",color:"gray",italic:true},Delay:100,Sound:{Sound:"minecraft:block.note_block.bell",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"ヴァルカ",color:"#D9822B",bold:true},{text:"> 「星を傷つけずに送る弓。……銘は、あたしがつけた。『星還し』だ」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.9}},{Text:{text:"",extra:[{text:"<"},{text:"ヴァルカ",color:"#D9822B",bold:true},{text:"> 「この弓の矢は、虚の海の黒い水を焼く。ほかの刃じゃ、あの黒い水には歯が立たないよ。……あんたが射るんだ」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.9}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……今夜が、星還祭です。オルドさまが、広場で待っています」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5},Command:"function neofunction:system/adv/tick/quest/40/fin/give_relics"}]
function neofunction:system/adv/tick/quest/40/d1/talk
