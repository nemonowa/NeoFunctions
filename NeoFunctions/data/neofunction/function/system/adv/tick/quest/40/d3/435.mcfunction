# 命名：435
# 説明：【追加：2026-10-09 ルブラ編】闇の間：火は燃えているのに、光がどこにも届かない。守り石の青い光だけが残る。床の青い印をたどる。影は守り石の光の中でだけ斬れる
# 実行条件：実行者 プレイヤー。#temp main_story 434
# >/function neofunction:system/adv/tick/quest/40/d3/zone
# =/function neofunction:system/adv/tick/quest/40/d3/435

# 内容
execute unless score #temp main_story matches 434 run return 0
scoreboard players set #temp main_story 435
data modify storage neofunction:rubra talk set value [{Text:{text:"光が、消えた。……いや、火は燃えている。燃えているのに、その光がどこにも届かない。闇が、光を食べている。",color:"gray",italic:true},Delay:120,Sound:{Sound:"minecraft:ambient.cave",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん、守り石を！　左手に持って……あの青い光だけは、消えない」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.7}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「床に、昔の水守の青い印がある。それをたどって。……闇の中から、何か来る。影は、影は、守り石の光の中に入ると動きがにぶるみたい」"}]},Delay:130,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"――るぅ……ら……（歌が、途切れ途切れに聞こえる。今にも消えてしまいそうに）",color:"#FF8A7A",italic:true},Delay:20,Sound:{Sound:"minecraft:entity.allay.ambient_without_item",Pitch:0.4},Command:"function neofunction:system/adv/tick/quest/40/d3/mira_go {to:\"c3\"}"}]
function neofunction:system/adv/tick/quest/40/d1/talk
