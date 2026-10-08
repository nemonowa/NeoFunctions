# 命名：412
# 説明：【追加：2026-10-08 ルブラ編】三の層でミラに追いつく。歌の声と、砂の亡者の話。ミラは四の層（星の台の間）へ先回りする
# 実行条件：実行者 プレイヤー。#temp main_story 411
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# =/function neofunction:system/adv/tick/quest/40/d1/412

# 内容
execute unless score #temp main_story matches 411 run return 0
scoreboard players set #temp main_story 412
data modify storage neofunction:rubra talk set value [{Text:{text:""},Delay:20,Sound:{Sound:"minecraft:block.note_block.bell",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……聞こえますか」"}]},Delay:80,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"――るぅ……ら……るぅ……",color:"#FF8A7A",italic:true},Delay:90,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「この声……夢の、声に、似てる。真っ暗なところで、誰かが泣いてる夢の……」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「気をつけて。この層には砂の亡者が出るって、鉱夫さんたちが。坑道で死んだ人が、砂になって……そんなの、お話だと思ってた」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「欠片の光を近づけると、亡者は弱るみたいです。……それから、北の壁に札を置く窪みがありました」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「この先の四の層に、古い仕掛けがあるはずです。先に行って、読んでおきますね」"}]},Delay:40,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d1/mira_to_l4"}]
function neofunction:system/adv/tick/quest/40/d1/talk
