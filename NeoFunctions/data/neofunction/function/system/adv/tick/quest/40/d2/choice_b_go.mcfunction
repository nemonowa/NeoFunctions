# 命名：choice_b_go
# 説明：【追加：2026-10-09 ルブラ編】選択 B「一緒に行くと言う」：セレンは断るが、少しだけ笑う。trust.selen +1（第三章の「守り石だけで救う」が楽になる）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d2/choice_b
# =/function neofunction:system/adv/tick/quest/40/d2/choice_b_go

# 内容
function neofunction:system/adv/tick/quest/40/trust {k:"selen"}
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"旅人",color:"#1E90FF",bold:true},{text:"> 「星を還すなら、手伝う。ひとりで背負わなくていい」"}]},Delay:90,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:1.6}},{Text:{text:"セレンは、少しだけ目を見開いた。それから、ほんのかすかに笑った。悲しい笑い方ではなかった。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「……ありがとう。でも、あなたたちには、まだ来てほしくない。これは、わたしたちが始めたことだから」"}]},Delay:130,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.3}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「黒い海のふたに、隙間ができはじめている。坑道の蟲は、そこから這い上がってきたもの。……急がなきゃいけないの。今度こそ、正しいやり方で」"}]},Delay:150,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「この奥の最初の泉に、星の涙が残っている。持っていきなさい、ミラ。……それと、旅人さん。あの子のこと、お願いね」"}]},Delay:20,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.4},Command:"function neofunction:system/adv/tick/quest/40/d2/428_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
