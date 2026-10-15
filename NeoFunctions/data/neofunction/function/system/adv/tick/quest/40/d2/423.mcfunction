# 命名：423
# 説明：洗い場の子どもたちの手まり歌。「つづきは、滝のうらのおみずのお家に書いてある」。最後に泉が弱って滝が細くなり、裏の扉が見える（424）
# 実行条件：実行者 洗い場の子ども（村人 906）。#temp main_story 422
# >/function neofunction:system/adv/player_interacted_with_entity/villager/906
# =/function neofunction:system/adv/tick/quest/40/d2/423

# 内容
execute unless score #temp main_story matches 422 run return 0
scoreboard players set #temp main_story 423
data modify storage neofunction:rubra talk set value [{Text:{text:"まりが石畳に跳ねるのに合わせて、子どもたちが歌っている。",color:"gray",italic:true},Delay:70,Sound:{Sound:"minecraft:entity.slime.jump_small",Pitch:1.4}},{Text:{text:"♪ ほしさま　ほしさま　どこからきたの\n　 くろい　うみの　ふたをしに",color:"#F2C7A0",italic:true},Delay:90,Sound:{Sound:"minecraft:block.note_block.flute",Pitch:1.2}},{Text:{text:"♪ ほしさま　ほしさま　いつかえるの\n　 みずもりさまの　くさりがとけて",color:"#F2C7A0",italic:true},Delay:90,Sound:{Sound:"minecraft:block.note_block.flute",Pitch:1.0}},{Text:{text:"♪ あかい　ひかりが　そらへ　のぼる\n　 ひとつ　ふたつ　みっつで　おやすみ",color:"#F2C7A0",italic:true},Delay:100,Sound:{Sound:"minecraft:block.note_block.flute",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……ルブラの子はみんな歌うんです。でも、ずっと意味がわからなかった。『黒い海のふた』って何だろう、って。ルブラのまわりには、海なんてないのに」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"洗い場の子ども",color:"#F2C7A0",bold:true},{text:"> 「星読みのおねえさんも、この歌のこと聞いてたよ。銀色の髪の。つづき知ってるかって」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.celebrate",Pitch:1.8}},{Text:{text:"",extra:[{text:"<"},{text:"洗い場の子ども",color:"#F2C7A0",bold:true},{text:"> 「おばあちゃんがね、ほんとはもっと長い歌なんだって。つづきは、滝のうらの、おみずのお家に書いてあるんだって」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.celebrate",Pitch:1.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「滝の裏……。そういえば、水守の館のいちばん奥に、昔の水守の通り道があるって、オルドさまが言ってた。行ってみましょう、旅人さん」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d2/423_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
