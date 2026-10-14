# 命名：413
# 説明：【追加：2026-10-08 ルブラ編】星の台の謎が解けた。縦穴のレールが一本につながる。ミラは先にトロッコで大空洞へ下りる
# 実行条件：実行者 プレイヤー（台を回した人）。三つの扉がすべて開いたとき
# >/function neofunction:system/rubra/d1/ped/apply
# =/function neofunction:system/adv/tick/quest/40/d1/413

# 内容
execute if data storage neofunction:rubra d1{solved:1b} run return 0
data modify storage neofunction:rubra d1.solved set value 1b
# 【追加：2026-10-14】縦穴のバリアブロックの囲いを外す
function neofunction:system/rubra/d1/shaft_open
execute if score #temp main_story matches 411..412 run scoreboard players set #temp main_story 413
playsound minecraft:block.beacon.activate block @a[distance=..48] ~ ~ ~ 1 0.8
data modify storage neofunction:rubra talk set value [{Text:{text:"縦穴の奥で、岩の動く重い音が響いた。レールが、一本の道になった。",color:"gray",italic:true},Delay:90,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.6}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「……師匠なら、一度でやったんだろうな」"}]},Delay:90,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「でも、できた。行きましょう。乗り場のトロッコで、いちばん下まで降ります。わたし、先に行きますね」"}]},Delay:40,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d1/mira_to_bottom"}]
function neofunction:system/adv/tick/quest/40/d1/talk
