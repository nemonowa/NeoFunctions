# 命名：choice_a_mira
# 説明：選択 A「ミラの味方をする」：trust.mira +1
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d2/choice_a
# =/function neofunction:system/adv/tick/quest/40/d2/choice_a_mira

# 内容
function neofunction:system/adv/tick/quest/40/trust {k:"mira"}
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"旅人",color:"#1E90FF",bold:true},{text:"> 「ミラの言うとおりだと思う。蟲は、下から来た。坑道のいちばん下の、さらに下から」"}]},Delay:110,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:1.6}},{Text:{text:"ミラが、驚いたように旅人を見た。それから、小さくうなずいた。",color:"gray",italic:true},Delay:90,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「……客人まで、そう言うか」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6},Command:"function neofunction:system/adv/tick/quest/40/d2/421_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
