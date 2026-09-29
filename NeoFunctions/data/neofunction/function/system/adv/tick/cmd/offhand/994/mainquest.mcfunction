# 命名：mainquest
# 説明：
# >/function neofunction:system/adv/tick/cmd/offhand/994
# =/function neofunction:system/adv/tick/cmd/offhand/994/mainquest


#メインクエストの状況に応じて目標を表示する
execute if score #temp main_story matches 0 run return run tellraw @s {"text":"目標無し","color":"dark_gray","bold":true,"italic":false}


scoreboard players set @s temp 0

#第一章
execute if score #temp main_story matches 1..18 run tellraw @s {"text":"蒼き入江と海賊の秘宝 (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 1..9 run return run tellraw @s {"text":"ビリーから野営地の案内を受ける 【進行中】"}
execute if score #temp main_story matches 10..11 run return run tellraw @s {"text":"ビリーから話の続きを聞く【進行中】"}
execute if score #temp main_story matches 12 run return run tellraw @s {"text":"フルクを海岸に探しに向かう【進行中】"}
execute if score #temp main_story matches 13..14 run return run tellraw @s {"text":"野営地に戻ってビリーから話の続きを聞く【進行中】"}
execute if score #temp main_story matches 15 run return run tellraw @s {"text":"Pairate of Cerestanianの前哨基地のアンカーを攻略し、ビリーに話しかける【進行中】"}
execute if score #temp main_story matches 16 run return run tellraw @s {"text":"Pairate of Cerestanianの本拠地に向い、フルクを救出する【進行中】"}
execute if score #temp main_story matches 17 run return run tellraw @s {"text":"野営地に戻って、フルクとビリーから話を聞く【進行中】"}
execute if score #temp main_story matches 18 if entity @s[advancements={neoadvancement:ceresta/root/1/8=true}] run return run tellraw @s {"text":"野営地に戻って、ビリーに報告する【進行中】"}
execute if score #temp main_story matches 18 if entity @s[advancements={neoadvancement:ceresta/root/1/8=false}] run return run tellraw @s {"text":"Pairate of Cerestanianの本拠地に向かい、総大将を討ち取る【進行中】"}

#第二章
execute if score #temp main_story matches 21..25 run tellraw @s {"text":"蹄音は大地に刻まれる (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 21 run tellraw @s {"text":"シェーラから話を聞く (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 22 run tellraw @s {"text":"厩舎に向いシェーラからの続きを聞く (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 23 run tellraw @s {"text":"酒場でシェーラから話の続きを聞く (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 24 run tellraw @s {"text":"全ての祭壇の試練を踏破しアンカーを解析する (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 25 run tellraw @s {"text":"元素の祭壇に向かい、大司教エキリブリアムに挑む (CerestaFesta) 【進行中】"}

#第三章
execute if score #temp main_story matches 31..45 run tellraw @s {"text":"黄金麦とフェスタ (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 31 run return run tellraw @s {"text":"商会長ニールから説明を聞く 【進行中】"}
execute if score #temp main_story matches 32 run return run tellraw @s {"text":"灯台に行き、商会長ニールに話しかける。 【進行中】"}
execute if score #temp main_story matches 33 run return run tellraw @s {"text":"ルクスイーファ商会に戻り、商会長ニールに話しかける。 【進行中】"}
execute if score #temp main_story matches 34 run return run tellraw @s {"text":"黄金麦を1スタック採集して、商会長ニールに話しかける。 【進行中】"}
execute if score #temp main_story matches 35 run return run tellraw @s {"text":"罠用ダクトに向かい、商会長ニールに麦小麦を1スタック渡す 【進行中】"}
execute if score #temp main_story matches 36 run return run tellraw @s {"text":"カエル軍団を追い払う 【進行中】"}
execute if score #temp main_story matches 37 run return run tellraw @s {"text":"蒼糸工房に立ち寄り、商会長ニールに話しかける。"}
execute if score #temp main_story matches 38 run return run tellraw @s {"text":"地下水路に潜る準備をし、商会長ニールに話しかける。"}
execute if score #temp main_story matches 39 run return run tellraw @s {"text":"ルクス地下水路第一層のアンカーを解析し、商会長ニールに報告する。"}
execute if score #temp main_story matches 40 run return run tellraw @s {"text":"ビリーの野営地にもどり、錬金術師と会話する。"}
execute if score #temp main_story matches 41 run return run tellraw @s {"text":"錬金術師クラウスに、ケロボーンを6つ渡す。"}
execute if score #temp main_story matches 42 run return run tellraw @s {"text":"ルクスイーファ商会に戻り、商会長ニールに話しかける。"}
execute if score #temp main_story matches 43 run return run tellraw @s {"text":"ルクス地下道に再度潜り、アンカーをすべて解析し、商会長ニールに話しかける。"}
execute if score #temp main_story matches 44 run return run tellraw @s {"text":"黄金麦の大聖堂に赴き、司祭フェイスに話しかける。"}
execute if score #temp main_story matches 45 run return run tellraw @s {"text":"パレスオブセレスタに向かい、黄金穀倉ルクスイーファのセレスティアルクリスタルを納品する。"}








