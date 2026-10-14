# 命名：433
# 説明：【追加：2026-10-09 ルブラ編】夜の星見の塔の一階：台座の裏の床石がずらされている（セレンが先に入った）。オルドが「水守の守り石」を渡し、セレンを連れて帰ってこいと言う
# 実行条件：実行者 オルド（村人 904）。#temp main_story 432、第三章の目印が置かれていること
# >/function neofunction:system/adv/player_interacted_with_entity/villager/904
# =/function neofunction:system/adv/tick/quest/40/d3/433

# 内容
execute unless score #temp main_story matches 432 run return 0
execute unless entity @e[type=marker,tag=rubra_cradle_hatch] run return run tellraw @p {"text":"（第三章「零の揺籃」の迷宮は準備中です）","color":"gray"}
scoreboard players set #temp main_story 433
execute as @e[type=marker,tag=rubra_cradle_hatch,limit=1] at @s run function neofunction:system/rubra/d3/hatch
data modify storage neofunction:rubra talk set value [{Text:{text:"夜の星見の塔。いちばん下の、星核を祀っていた台座の裏の床石が、ずらされていた。その下に、狭い階段が闇の中へ続いている。",color:"gray",italic:true},Delay:130,Sound:{Sound:"minecraft:block.stone.break",Pitch:0.6}},{Text:{text:"階段のまわりの石に、壁画と同じ古い民の文字。『ここより下、重さなく、光なく、上下なし。星より古き揺籃、零の眠る場所』",color:"#A8A8C8",italic:true},Delay:140,Sound:{Sound:"minecraft:block.amethyst_block.resonate",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「昨夜、塔の封印が破られた。セレンは、この下へ向かった。……止めはせん」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「水守の守り石だ。虚の海の黒い水に、ほんの少しだけ抗える。下の闇は、ふつうの灯りでは照らせぬ。……持っていけ」"}]},Delay:120,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6},Command:"function neofunction:system/adv/tick/quest/40/d3/give_stone"},{Text:{text:"「水守の守り石」を受け取った。（オフハンドに持つと闇を照らし、影の動きを鈍らせる。手に持って、取り込まれた欠片を右クリックすると引き剥がせる）",color:"#4A9BE0",italic:true},Delay:130,Sound:{Sound:"minecraft:block.beacon.activate",Pitch:1.4}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「オルドさまは、師匠を許すんですか」"}]},Delay:80,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"オルド",color:"#4A7BD0",bold:true},{text:"> 「許すも何も。あの子に、わしらの罪を背負わせたのは、わしらだ。……セレンを、連れて帰ってこい」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:0.6},Command:"function neofunction:system/adv/tick/quest/40/d3/433_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
