# 命名：burst_c
# 説明：【追加：2026-10-09 ルブラ編】結末 C の始まり：星が空へ還り弾けたあと、光のひとかけら「星の子」が広場へ降りてくる。黒い滴りの残りが、星の子を狙う（child_start へ）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/fin/choice_final
# =/function neofunction:system/adv/tick/quest/40/fin/burst_c

# 内容
function neofunction:system/adv/tick/quest/40/fin/release
execute in neodimension:ceresta_festa positioned 921.5 232 3282.5 run particle minecraft:flash{color:[1.0,0.9,0.8,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute in neodimension:ceresta_festa positioned 921.5 232 3282.5 run particle minecraft:end_rod ~ ~ ~ 6 6 6 0.4 600 force @a[distance=..128]
data modify storage neofunction:rubra talk set value [{Text:{text:"一一矢は、音もなく夜空を昇った。赤と青と金の光が、星を、そっと包みこむ。",color:"gray",italic:true},Delay:100,Sound:{Sound:"minecraft:block.beacon.power_select",Pitch:1.2}},{Text:{text:"――あ。……あったかい。",color:"#FF7B7B",italic:true},Delay:80,Sound:{Sound:"minecraft:block.amethyst_block.chime",Pitch:1.4}},{Text:{text:"星は夜空へ昇り、弾けた。……けれど、光がやんだあとも、ひとかけらだけ、小さな赤い光が、ゆらゆらと白い舞台の真ん中へ降りてきた。",color:"gray",italic:true},Delay:130,Sound:{Sound:"minecraft:entity.allay.ambient_with_item",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"アズールの手記",color:"#C9A27E",bold:true},{text:"> 「借りたものは、返す。もらったものには、礼を言う」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「星の子……！ ルブラが、ここに、ひとかけら残ってくれたんだ」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「黒い水の残りが、あの子を狙ってる！ 旅人さん、守って！」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0},Command:"function neofunction:system/adv/tick/quest/40/fin/child_start"}]
# 【変更：2026-10-14】会話は空の舞台の上で
execute in neodimension:ceresta_festa positioned 921.5 200 3282.5 run function neofunction:system/adv/tick/quest/40/d1/talk
