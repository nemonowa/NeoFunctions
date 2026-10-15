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

# 第四章（ルブラ編。進み具合 410〜449）
execute if score #temp main_story matches 410..448 run tellraw @s {"text":"紅鉢の街ルブラ (CerestaFesta) 【進行中】"}
execute if score #temp main_story matches 410 run return run tellraw @s {"text":"坑道の入口にいる鉱夫頭バルドに話を聞く 【進行中】"}
execute if score #temp main_story matches 411 run return run tellraw @s {"text":"赤い足跡をたどって、坑道の奥（三の層）へ 【進行中】"}
execute if score #temp main_story matches 412 run return run tellraw @s {"text":"さらに下の四の層「星の台の間」へ。三つの星の台の謎を解く 【進行中】"}
execute if score #temp main_story matches 413 run return run tellraw @s {"text":"乗り場（縦穴の南東の角）のトロッコで、縦穴の底へ 【進行中】"}
execute if score #temp main_story matches 414 run return run tellraw @s {"text":"縦穴の底の大空洞「星の畑」で、ミラに追いつく 【進行中】"}
execute if score #temp main_story matches 415 run return run tellraw @s {"text":"ソウルイーターを止める 【進行中】"}
execute if score #temp main_story matches 416 run return run tellraw @s {"text":"星の欠片をどうするか決める 【進行中】"}
execute if score #temp main_story matches 417..418 run return run tellraw @s {"text":"トロッコで上へ戻り、坑道の入口のバルドに知らせる 【進行中】"}
execute if score #temp main_story matches 419 run return run tellraw @s {"text":"坑道の入口のミラに話しかける 【進行中】"}
execute if score #temp main_story matches 420 run return run tellraw @s {"text":"湖のほとりの水守の館へ。水守頭オルドに話しかける 【進行中】"}
execute if score #temp main_story matches 421 run return run tellraw @s {"text":"夜の湖のほとりへ。隊商の長カシムに話しかける 【進行中】"}
execute if score #temp main_story matches 422 run return run tellraw @s {"text":"翌朝、水守の谷の洗い場へ。手まり歌を歌う子どもたちに話しかける 【進行中】"}
execute if score #temp main_story matches 423 run return run tellraw @s {"text":"洗い場の子どもたちの手まり歌を聞く 【進行中】"}
execute if score #temp main_story matches 424 run return run tellraw @s {"text":"水守の館の北の壁の模様のタイルから、地下の通り道を通って聖堂へ 【進行中】"}
execute if score #temp main_story matches 425 run return run tellraw @s {"text":"聖堂の水門の輪を回して扉を開き、奥の壁画の間へ 【進行中】"}
execute if score #temp main_story matches 426 run return run tellraw @s {"text":"壁画の間の二つの水門を同時に開けて黒い水を押し流し、番人の間へ 【進行中】"}
execute if score #temp main_story matches 427 run return run tellraw @s {"text":"壁ぎわの四つの水門を開けて涸れの番人を洗い、鎮める 【進行中】"}
execute if score #temp main_story matches 428 run return run tellraw @s {"text":"セレンの話を聞き、祠の奥の最初の泉へ 【進行中】"}
execute if score #temp main_story matches 429 run return run tellraw @s {"text":"水守の館の前のミラに話しかける 【進行中】"}
execute if score #temp main_story matches 430 run return run tellraw @s {"text":"水守の館の奥のオルドに話しかける 【進行中】"}
execute if score #temp main_story matches 431 run return run tellraw @s {"text":"オルドの話を聞き、アズールの手記をどうするか決める 【進行中】"}
execute if score #temp main_story matches 432 run return run tellraw @s {"text":"夜、星見の塔の一階へ。オルドが待っている 【進行中】"}
execute if score #temp main_story matches 433 run return run tellraw @s {"text":"塔の下の階段を下り、零の揺籃の浮遊の間でミラに追いつく 【進行中】"}
execute if score #temp main_story matches 434 run return run tellraw @s {"text":"浮いた足場を渡り、守り石で結晶の封を抜いて闇の間へ 【進行中】"}
execute if score #temp main_story matches 435 run return run tellraw @s {"text":"闇の間：守り石の光で影を退けながら、床の青い印をたどる 【進行中】"}
execute if score #temp main_story matches 436 run return run tellraw @s {"text":"反転の間：壁の逆さまの絵を手がかりに正しい扉をくぐり、球の広間へ 【進行中】"}
execute if score #temp main_story matches 437 run return run tellraw @s {"text":"星喰みのセレンを救う（星核の欠片を砕くか、守り石で引き剥がす） 【進行中】"}
execute if score #temp main_story matches 438 run return run tellraw @s {"text":"正気に戻ったセレンの話を聞く 【進行中】"}
execute if score #temp main_story matches 439 run return run tellraw @s {"text":"水守の館のミラに話しかける 【進行中】"}
execute if score #temp main_story matches 440 run return run tellraw @s {"text":"広場の西の鍛冶場へ。ヴァルカに 3 つの素材を見せる 【進行中】"}
execute if score #temp main_story matches 441 run return run tellraw @s {"text":"夜、星の広場へ。オルドに話しかける（星還祭は日が沈んでから） 【進行中】"}
execute if score #temp main_story matches 442 run return run tellraw @s {"text":"星見の塔の一階へ。ミラに話しかける 【進行中】"}
execute if score #temp main_story matches 443..446 run return run tellraw @s {"text":"星還りの空で、ヴォイド・ゼロを討つ 【進行中】"}
execute if score #temp main_story matches 447..448 run return run tellraw @s {"text":"星還りの夜の結末を見届ける 【進行中】"}
execute if score #temp main_story matches 449.. run return run tellraw @s {"text":"紅鉢の街ルブラ (CerestaFesta) 【達成】"}
