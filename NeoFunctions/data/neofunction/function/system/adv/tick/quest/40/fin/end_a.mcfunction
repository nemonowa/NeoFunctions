# 命名：end_a
# 説明：【追加：2026-10-09 ルブラ編】結末 A「星還りの夜」：矢が星を包み、星は空へ昇って弾ける。虚の海は星の光でふたをされる。泉は細くなるが澄んだ水で湧き続ける
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/fin/choice_final
# =/function neofunction:system/adv/tick/quest/40/fin/end_a

# 内容
function neofunction:system/adv/tick/quest/40/fin/release
execute in neodimension:ceresta_festa positioned 921.5 232 3282.5 run particle minecraft:flash{color:[1.0,0.9,0.8,1.0]} ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute in neodimension:ceresta_festa positioned 921.5 232 3282.5 run particle minecraft:end_rod ~ ~ ~ 6 6 6 0.4 600 force @a[distance=..128]
scoreboard players set #temp main_story 448
data modify storage neofunction:rubra talk set value [{Text:{text:"一――白い舞台の上から見上げると、夜空にはまだ、星の弾けた光の名残が漂っていた。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:block.beacon.power_select",Pitch:1.2}},{Text:{text:"――あ。……あったかい。",color:"#FF7B7B",italic:true},Delay:90,Sound:{Sound:"minecraft:block.amethyst_block.chime",Pitch:1.4}},{Text:{text:"星は黒い海を振りほどき、鉢の真上の夜空へ昇っていった。縁を越える高さで、一度だけ振り返り――弾けた。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:entity.firework_rocket.large_blast",Pitch:0.8}},{Text:{text:"すべての色をあわせたような光が、夜空いっぱいに広がる。ずっと下のほうで、何かが、ことり、とふたをされる音がした。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:block.end_portal.spawn",Pitch:1.4}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……還った。還ったよ、師匠」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"セレン",color:"#C8D0FF",bold:true},{text:"> 「ええ。……還ったわね」"}]},Delay:80,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.0}},{Text:{text:"はるか下の広場から、歓声が昇ってきた。数えきれない灯籠が、ひとつの方角へ流れていく。――新しい、赤い星のほうへ。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:0.8}},{Text:{text:"【終幕】祭りの翌朝、泉は細く、けれど澄んだ水で湧いていた。水守の館の前に、新しい石板が立てられた。「水は、街のもの。そして、水は、借りたもの」",color:"gray",italic:true},Delay:140,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.7}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「わしの代では、ここまでだ。残りは、若い者が決めればいい」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん。……ありがとう。来年の星還祭も、きっと来てくださいね」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5},Command:"function neofunction:system/adv/tick/quest/40/fin/449 {e:'A'}"}]
# 【変更：2026-10-14】会話は空の舞台の上で
execute in neodimension:ceresta_festa positioned 921.5 200 3282.5 run function neofunction:system/adv/tick/quest/40/d1/talk
