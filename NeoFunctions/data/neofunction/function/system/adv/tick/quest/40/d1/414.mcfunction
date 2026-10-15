# 命名：414
# 説明：大空洞「星の畑」に着く。星の声「いたい」と、ソウルイーターの前ぶれ。会話の最後でボス戦を始める
# 実行条件：実行者 プレイヤー。#temp main_story 413
# >/function neofunction:system/adv/tick/quest/40/d1/zone
# =/function neofunction:system/adv/tick/quest/40/d1/414

# 内容
execute unless score #temp main_story matches 413 run return 0
scoreboard players set #temp main_story 414
data modify storage neofunction:rubra talk set value [{Text:{text:"天井の見えない空洞。赤土の床から、星核の欠片が花のように顔を出して、ぼうっと光っている。何百。何千。",color:"gray",italic:true},Delay:110,Sound:{Sound:"minecraft:block.amethyst_block.resonate",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……星の、畑」"}]},Delay:80,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"――るぅ……ら……",color:"#FF8A7A",italic:true},Delay:80,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん。なにか、来る」"}]},Delay:70,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.7}},{Text:{text:"地面が、揺れた。",color:"gray",italic:true},Delay:60,Sound:{Sound:"minecraft:entity.ravager.roar",Pitch:0.5}},{Text:{text:"――いたい。",color:"#FF5A4A",bold:true,italic:true},Delay:70,Sound:{Sound:"minecraft:entity.allay.hurt",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「いたい、って……いたいって、言ってる……！　旅人さん、あれを止めて！　お願い！」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d1/boss_start"}]
function neofunction:system/adv/tick/quest/40/d1/talk
