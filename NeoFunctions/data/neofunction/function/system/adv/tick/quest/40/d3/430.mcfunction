# 命名：430
# 説明：第三章「零の揺籃」のはじまり：館の前のミラに話しかけると、底の川と湖に黒い水が混じり始めている話。オルドに会いに行く
# 実行条件：実行者 ミラ（村人 902）。#temp main_story 429
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/d3/430

# 内容
execute unless score #temp main_story matches 429 run return 0
scoreboard players set #temp main_story 430
# この章の選択の記録を消す（前の遊びの記録が残っていると、選択肢が出ない）
data remove storage neofunction:rubra choice.reveal
data remove storage neofunction:rubra choice.selen_way
data modify storage neofunction:rubra talk set value [{Text:{text:"聖堂から戻った朝、鉢の底の川が黒く濁っていた。洗い布を浸すと、墨を流したような黒い筋が絡みついて、どれだけすすいでも落ちない。",color:"gray",italic:true},Delay:140,Sound:{Sound:"minecraft:block.water.ambient",Pitch:0.6}},{Text:{text:"広場では、灯籠を組み立てる手が止まっていた。……泉が細い。滝が細い。川が黒い。星核が盗まれた。坑道の下で、化け物が出た。",color:"gray",italic:true},Delay:130,Sound:{Sound:"minecraft:block.note_block.chime",Pitch:0.5}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「旅人さん。……オルドさまに、聞きます。壁画のこと、師匠のこと、ぜんぶ」"}]},Delay:110,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.4}},{Text:{text:"",extra:[{text:"<"},{text:"ミラ",color:"#7FB3FF",bold:true},{text:"> 「一緒に、来てくれますか」"}]},Delay:20,Sound:{Sound:"minecraft:entity.villager.ambient",Pitch:1.5},Command:"function neofunction:system/adv/tick/quest/40/d3/430_end"}]
function neofunction:system/adv/tick/quest/40/d1/talk
tellraw @a[distance=..48] [{"text":"＊","color":"#D8DE2A","italic":true},{"text":"メインクエスト：","color":"#FFD700","bold":true,"italic":false},{"text":"零の揺籃","color":"#A8A8C8","bold":true,"italic":false},{"text":" が始まった","color":"#FFD700","bold":true,"italic":false}]
