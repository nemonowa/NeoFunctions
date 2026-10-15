# 命名：tear
# 説明：最初の泉の盃を右クリック：最初の泉の涙（1907、素材 2）を得る（428 から触れるたびに毎回。会話の場面は最初の 1 回だけ）。ミラ「どうしたらいいのかわからない」、旅人「星は、ありがとうって言った」。最後に第二章の終わり（429）
# 実行条件：実行者 プレイヤー。#temp main_story 428、セレンが去ったあと
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/adv/tick/quest/40/d2/tear

# 内容
execute unless score #temp main_story matches 428.. run return run tellraw @s {"text":"乾いた石の盃。底に、澄んだ水色の雫がひと粒だけ残っている。","color":"gray","italic":true}
execute if score #temp main_story matches 428 unless data storage neofunction:rubra d2{selen:1b} run return 0
# 2 回目からは、場面なしで涙だけ手に入る（触れるたびに毎回）
execute if data storage neofunction:rubra d2{tear:1b} run tellraw @s {"text":"乾いた盃の底に、また澄んだ雫がひと粒、生まれていた。「最初の泉の涙」を手に入れた。","color":"#7FD8FF","italic":true}
execute if data storage neofunction:rubra d2{tear:1b} run return run loot give @s loot neofunction:item/1907
data modify storage neofunction:rubra d2.tear set value 1b
loot give @s loot neofunction:item/1907
playsound minecraft:block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 1.5 1.2
data modify storage neofunction:rubra talk set value [{Text:{text:"天井の穴から、細い光が一本落ちている。乾いた石の盃の底に、こぼれ落ちる直前で時間ごと固まったような、澄んだ水色の雫がひと粒。……すくい上げると、冷たいのに、手のひらの中でかすかに脈を打っていた。",color:"gray",italic:true},Delay:160,Sound:{Sound:"minecraft:block.amethyst_block.resonate",Pitch:1.2}},{Text:{text:"「最初の泉の涙」を手に入れた。",color:"#7FD8FF",bold:true},Delay:70,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……旅人さん。わたし、どうしたらいいのか、わからない」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.3}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「師匠は正しいことを言ってる気がする。でも、星が還ったら、ルブラの水がなくなる。バルドさんも、カシムさんも、まりをついてた子たちも、みんな困る。……誰が正しいの？」"}]},Delay:170,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.3}},{Text:{text:"",extra:[{text:"<"},{text:"旅人",color:"#1E90FF",bold:true},{text:"> 「わからない。……でも、星は、ありがとうって言った。痛いって言ってたのに、怒ってなかった」"}]},Delay:130,Sound:{Sound:"minecraft:entity.player.levelup",Pitch:1.4}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……そうですね。帰りましょう。オルドさまに、聞かなきゃいけないことがある」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5},Command:"function neofunction:system/adv/tick/quest/40/d2/429"}]
function neofunction:system/adv/tick/quest/40/d1/talk
