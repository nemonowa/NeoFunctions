# 命名：choice_b_listen
# 説明：選択 B「話を聞く」：黒い海のふたに隙間ができていること、「今度こそ正しいやり方で」、最初の泉の涙のこと、「自分の耳で聞いたものを信じなさい」
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d2/choice_b
# =/function neofunction:system/adv/tick/quest/40/d2/choice_b_listen

# 内容
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「坑道で蟲を倒してくれたのは、あなたね。礼を言うわ。あれは、黒い海から這い上がってきたもの。星の力が弱って、ふたに隙間ができはじめているの」"}]},Delay:150,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.3}},{Text:{text:"",extra:[{text:"<"},{text:"旅人",color:"#1E90FF",bold:true},{text:"> 「隙間が広がったら、どうなる」"}]},Delay:70,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:1.4}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「黒い海が、溢れる。そうなる前に、星を還さなきゃいけない。……今度こそ、正しいやり方で」"}]},Delay:120,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「この聖堂のいちばん奥に、最初の泉がある。星が落ちて、はじめて湧いた水の跡。そこに、星の涙が残っているはず。……持っていきなさい、ミラ。わたしには、もう、触れる資格がない」"}]},Delay:160,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.2}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「師匠、待って――」"}]},Delay:60,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「ミラ。……あなたは、自分の耳で聞いたものを、信じなさい。院の書物でも、オルドでも、わたしでもなく」"}]},Delay:20,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:1.4},Command:"function neofunction:system/adv/tick/quest/40/d2/428_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
