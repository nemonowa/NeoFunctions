# 命名：choice_bury
# 説明：選択「埋め戻す」：星の信頼が 1 上がる（storage neofunction:rubra trust.star）。星の声が、もう一言だけ聞こえる
# 実行条件：実行者 プレイヤー。#temp main_story 416
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/adv/tick/quest/40/d1/choice_bury

# 内容
execute unless score #temp main_story matches 416 run return 0
execute if data storage neofunction:rubra choice.field run return 0
data modify storage neofunction:rubra choice.field set value "bury"
execute store result score #rubra_r temp run data get storage neofunction:rubra trust.star
scoreboard players add #rubra_r temp 1
execute store result storage neofunction:rubra trust.star int 1 run scoreboard players get #rubra_r temp
kill @e[tag=rubra_choice]
data modify storage neofunction:rubra talk set value [{Text:{text:"手のひらの欠片を、赤土にそっと埋め戻した。",color:"gray",italic:true},Delay:80,Sound:{Sound:"minecraft:block.rooted_dirt.place",Pitch:0.8}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……うん。わたしも、そのほうがいい気がします」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"――……あったかい。",color:"#FF8A7A",italic:true},Delay:90,Sound:{Sound:"minecraft:entity.allay.ambient_with_item",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……地上へ戻りましょう。バルドさんに、知らせなきゃ」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d1/417"}]
function neofunction:system/adv/tick/quest/40/d1/talk
