# 命名：end_b
# 説明：結末 B「鎖の守り人」：矢は黒い渦を射抜き、星はふたたび地に縛られる。泉は元に戻るが、星の声は二度と聞こえない。ミラは街を去り、灯籠はどこへも向かわず消える
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/fin/choice_final
# =/function neofunction:system/adv/tick/quest/40/fin/end_b

# 内容
function neofunction:system/adv/tick/quest/40/fin/release
scoreboard players set #temp main_story 448
data modify storage neofunction:rubra talk set value [{Text:{text:"矢は、黒い渦のまん中を射抜いた。虚の海が悲鳴のような音を立てて、鉢の底へ沈んでいく。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:entity.warden.death",Pitch:0.8}},{Text:{text:"――そして、昇りかけた星も。ほどけた鎖が、ひとつ、またひとつ、星に巻きつき直す音がした。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:block.chain.place",Pitch:0.5}},{Text:{text:"――……。",color:"#FF7B7B",italic:true},Delay:80,Sound:{Sound:"minecraft:block.amethyst_block.chime",Pitch:0.6}},{Text:{text:"赤い光は、ゆっくりと塔の真下へ沈んでいった。湖の黒い水が、澄んでいく。泉が、前と同じ勢いで湧き出した。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:block.water.ambient",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……ルブラの声が、聞こえない。どこにも」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.3}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「……これも、ひとつの答えよ。街は救われた。……星を、ふたたび眠らせて」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"灯籠は、どこへも向かわず、夜空でひとつずつ消えていった。",color:"gray",italic:true},Delay:100,Sound:{Sound:"minecraft:block.candle.extinguish",Pitch:0.8}},{Text:{text:"【終幕】泉は元に戻った。数日後、ミラは書き置きを残して街を去った。「星の声が聞こえる場所を、探しに行きます」",color:"gray",italic:true},Delay:130,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「……旅人よ。楔を見張る役目を、そなたに継いでもらえぬか。鎖の守り人は、もう、わしだけでは重すぎる」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6},Command:"function neofunction:system/adv/tick/quest/40/fin/449 {e:'B'}"}]
# 会話は空の舞台の上で
execute in neodimension:ceresta_festa positioned 921.5 200 3282.5 run function neofunction:system/adv/tick/quest/40/d1/talk
