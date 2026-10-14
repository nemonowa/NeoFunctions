# 命名：426
# 説明：【追加：2026-10-09 ルブラ編】壁画の間：空から星を引き下ろす青い衣の人々と、黒い海（秘密 3 の半分）。ミラが先に来ていて、壁画を見ている
# 実行条件：実行者 プレイヤー。#temp main_story 425
# >/function neofunction:system/adv/tick/quest/40/d2/zone
# =/function neofunction:system/adv/tick/quest/40/d2/426

# 内容
execute unless score #temp main_story matches 425 run return 0
scoreboard players set #temp main_story 426
execute as @e[type=marker,tag=rubra_mira_w2,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
data modify storage neofunction:rubra talk set value [{Text:{text:"壁一面の古い壁画。何百年も前のものだろうに、色は少しも褪せていない。",color:"gray",italic:true},Delay:90,Sound:{Sound:"minecraft:block.amethyst_block.resonate",Pitch:0.6}},{Text:{text:"夜空を、赤い星が尾を引いて泳いでいる。星には、目と、小さな口。……地上では青い衣の人々が輪になって手を掲げ、その手から金色の鎖が星へ伸びている。",color:"gray",italic:true},Delay:140,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.6}},{Text:{text:"地の下には、黒い、うねる海。海の中に、無数の目。……そしていちばん下で、鎖に引かれて落ちた星が、黒い海の上に覆いかぶさっている。星の目から、赤い涙が流れていた。",color:"gray",italic:true},Delay:150,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……星を、引きずり下ろしてる。青い衣。水守の衣だ。水守が、空から星を引きずり下ろして……黒い海の、ふたにしてる」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.4}},{Text:{text:"――くろい　うみの　ふたをしに。",color:"#F2C7A0",italic:true},Delay:80,Sound:{Sound:"minecraft:block.note_block.flute",Pitch:0.9}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「嘘だ。嘘、こんなの。星は、落ちてきたんでしょう？　燃えて、落ちてきて、それで……」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.hurt",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……奥に、まだ道があります。水の音がする。でも、その先の水……黒い」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.4},Command:"function neofunction:system/adv/tick/quest/40/d2/426_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
