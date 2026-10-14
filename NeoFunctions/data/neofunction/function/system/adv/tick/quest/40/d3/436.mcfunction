# 命名：436
# 説明：【追加：2026-10-09 ルブラ編】反転の間：扉をくぐるたびに世界がくるりと回る。部屋ごとに 3 つの扉（丸・四角・星）があり、壁の逆さまの絵がその部屋の正しい扉を教える
# 実行条件：実行者 プレイヤー。#temp main_story 435
# >/function neofunction:system/adv/tick/quest/40/d3/zone
# =/function neofunction:system/adv/tick/quest/40/d3/436

# 内容
execute unless score #temp main_story matches 435 run return 0
scoreboard players set #temp main_story 436
data modify storage neofunction:rubra talk set value [{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「扉が三つ……丸と、四角と、星。壁の絵も、逆さまに描いてある」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「この部屋では、上と下が入れ替わってるんだ。だから絵も、逆さまに見ないと……逆さまに見たら、その形の扉が正しい道なんだと思います」"}]},Delay:140,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6}},{Text:{text:"扉を右クリックでくぐる。まちがえると、最初の部屋に戻る。",color:"gray",italic:true},Delay:20,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.8},Command:"function neofunction:system/adv/tick/quest/40/d3/mira_go {to:\"c4\"}"}]
function neofunction:system/adv/tick/quest/40/d1/talk
