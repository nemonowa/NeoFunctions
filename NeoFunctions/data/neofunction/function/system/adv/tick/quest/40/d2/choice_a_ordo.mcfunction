# 命名：choice_a_ordo
# 説明：【追加：2026-10-09 ルブラ編】選択 A「オルドの言うことも分かる」：trust.ordo +1（第三章で、オルドが手記を早く見せてくれる）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a
# =/function neofunction:system/adv/tick/quest/40/d2/choice_a_ordo

# 内容
function neofunction:system/adv/tick/quest/40/trust {k:"ordo"}
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"旅人",color:"#1E90FF",bold:true},{text:"> 「水守頭の言うことにも、理がある。街の水を預かっているのは、この人だ」"}]},Delay:110,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:1.2}},{Text:{text:"ミラが、傷ついたように目を伏せた。",color:"gray",italic:true},Delay:80,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.7}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「……そなたは、話の分かる客人だ。いずれ、そなたには話さねばならぬことがあるやもしれん」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6},Command:"function neofunction:system/adv/tick/quest/40/d2/421_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
