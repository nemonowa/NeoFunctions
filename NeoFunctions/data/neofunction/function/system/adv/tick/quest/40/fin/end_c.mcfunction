# 命名：end_c
# 説明：【追加：2026-10-09 ルブラ編】結末 C「星と街の約束」：星の子は泉に残り、自分の意思で水を分ける。泉は 7 割ほど残る。毎年の星還祭に赤い流れ星
# 実行条件：実行者 プレイヤー
# >/function neofunction:entity/skill/boss/rubra_void/child_win
# =/function neofunction:system/adv/tick/quest/40/fin/end_c

# 内容
data modify storage neofunction:rubra talk set value [{Text:{text:"夜が明けはじめた。黒い水の最後の滴りが、朝の光の中で澄んだ雨に変わる。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:weather.rain",Pitch:1.2}},{Text:{text:"星の子は、ゆらゆらと泉のほうへ降りていき、水の中へ、そっと沈んだ。",color:"gray",italic:true},Delay:100,Sound:{Sound:"minecraft:entity.allay.item_given",Pitch:1.0}},{Text:{text:"――わけて、あげる。",color:"#FF7B7B",italic:true},Delay:100,Sound:{Sound:"minecraft:block.amethyst_block.chime",Pitch:1.2}},{Text:{text:"泉が、こぽりと音を立てた。湧き出した水は、星がいたころの七割ほど。澄んで、少しだけ、あたたかかった。",color:"gray",italic:true},Delay:130,Sound:{Sound:"minecraft:block.water.ambient",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「ルブラが……自分で、水を分けてくれた。縛られてじゃなく、約束して」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「アズールが、何百年も前に、ほんとうに頼みたかったこと。……やっと、届いたのね」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"【終幕】それからルブラでは、毎年の星還祭の夜、赤い流れ星がひとつ、必ず鉢の上を横切るようになった。",color:"gray",italic:true},Delay:130,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん。……来年も、見に来てくださいね。ルブラとの、約束の日を」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/fin/449 {e:'C'}"}]
function neofunction:system/adv/tick/quest/40/d1/talk
