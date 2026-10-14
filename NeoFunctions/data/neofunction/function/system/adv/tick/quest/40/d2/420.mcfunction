# 命名：420
# 説明：【追加：2026-10-09 ルブラ編】第二章「涸れ泉の聖堂」のはじまり：坑道の入口のミラに話しかけると、水守の伝令の知らせ。NPC と仕掛けを置き、ミラは水守の館へ
# 実行条件：実行者 ミラ（村人 902）。#temp main_story 419
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/d2/420

# 内容
execute unless score #temp main_story matches 419 run return 0
scoreboard players set #temp main_story 420
# 【追加：2026-10-14】この章の選択の記録を消す（前の遊びの記録が残っていると、選択肢が出ない）
data remove storage neofunction:rubra choice.council
data remove storage neofunction:rubra choice.selen
function neofunction:system/rubra/d2/setup
data modify storage neofunction:rubra talk set value [{Text:{text:""},Delay:20,Sound:{Sound:"minecraft:block.note_block.bell",Pitch:1.0}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん。……さっき、水守の伝令が来ました。オルドさまが、館に集まれって」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「たぶん、師匠のことです。……星の血晶のことも、坑道の底のことも、ちゃんと話さなきゃ」"}]},Delay:100,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.4}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「先に行ってますね。水守の館は、湖のほとりです」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.6},Command:"function neofunction:system/adv/tick/quest/40/d2/420_go"}]
function neofunction:system/adv/tick/quest/40/d1/talk
tellraw @a[distance=..48] [{"text":"＊","color":"#D8DE2A","italic":true},{"text":"メインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"涸れ泉の聖堂","color":"#7FD8FF","bold":true,"italic":false},{"text":" が始まった","color":"#FFD700","bold":true,"italic":false}]
