# 命名：902
# 説明：【追加：2026-10-08 ルブラ編】ミラに話しかけたとき。進み具合に合わせたひとこと（次にすることの手がかり）。欠片が手元にない人には予備を渡す
# 実行条件：実行者・実行位置 ミラ（村人、DeathLootTable neofunction:asset/summon/902）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/902

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
# 欠片をなくした人に予備（411〜413）
execute if score #temp main_story matches 411..413 unless data storage neofunction:rubra d1{solved:1b} as @p unless items entity @s container.* minecraft:red_dye[minecraft:custom_model_data={floats:[1904.0f]}] unless items entity @s weapon.offhand minecraft:red_dye[minecraft:custom_model_data={floats:[1904.0f]}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/902_spare
execute if score #temp main_story matches 410 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「まずはバルドさんに、足跡のことを聞いてみましょう」"}]
execute if score #temp main_story matches 411 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「深い層では、欠片をオフハンドに持ってくださいね。星の光は消えないから」"}]
execute if score #temp main_story matches 412..413 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「白い層の迷い路の奥に刻まれてた三つの言葉のとおりに、台の光の色を星の色に合わせて……そろったら鐘を鳴らすんです」"}]
execute if score #temp main_story matches 414..415 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「頭を狙って！ それと、あの勢い……柱にぶつけられれば……！」"}]
execute if score #temp main_story matches 416 as @p run return run function neofunction:system/adv/tick/quest/40/d1/choice_show
execute if score #temp main_story matches 417 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「バルドさんに、知らせましょう」"}]
# 【追加：2026-10-09】第二章
execute if score #temp main_story matches 419 run return run function neofunction:system/adv/tick/quest/40/d2/420
execute if score #temp main_story matches 420 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「オルドさまが待ってます。……わたし、ちゃんと言えるかな」"}]
execute if score #temp main_story matches 421 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「……カシムさんが、湖のほとりで呼んでましたよ」"}]
execute if score #temp main_story matches 422 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「洗い場の子たちに聞いてみましょう。師匠が、何か聞いてたかもしれない」"}]
execute if score #temp main_story matches 423..424 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「滝の裏の扉から入れます。行きましょう」"}]
execute if score #temp main_story matches 425 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「ガラスの柱を見て。どの部屋に、何つぶんの水が入ってるか……そこから考えましょう」"}]
execute if score #temp main_story matches 426..427 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「黒い水は、上の水門から澄んだ水を流せば押し流せるはず。番人は……四隅の水門で洗うんです」"}]
execute if score #temp main_story matches 428 unless data storage neofunction:rubra choice.selen as @p run return run function neofunction:system/adv/tick/quest/40/d2/choice_b_show
execute if score #temp main_story matches 428 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「祠の奥……最初の泉へ」"}]
# 【追加：2026-10-09】第三章
execute if score #temp main_story matches 429 run return run function neofunction:system/adv/tick/quest/40/d3/430
execute if score #temp main_story matches 430..431 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「オルドさまに、ぜんぶ聞きましょう」"}]
execute if score #temp main_story matches 432 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「夜になったら、星見の塔へ。オルドさまが待ってます」"}]
execute if score #temp main_story matches 433..437 as @p unless items entity @s container.* minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] unless items entity @s weapon.offhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return run function neofunction:system/adv/tick/quest/40/d3/give_stone
execute if score #temp main_story matches 433..435 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「守り石を、左手に。……青い光だけは、消えないから」"}]
execute if score #temp main_story matches 436 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「壁の絵を、逆さまに見て。その形の扉が、正しい道です」"}]
execute if score #temp main_story matches 437 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「守り石を手に持って、欠片を右クリック……そばを離れないで！」"}]
# 【追加：2026-10-09 ルブラ編】終章
execute if score #temp main_story matches 439 run return run function neofunction:system/adv/tick/quest/40/fin/440
# 【変更：2026-10-14】440 は天墜の楔を渡す（話しかけるたびに受け取れる）
execute if score #temp main_story matches 440 as @p run return run function neofunction:system/adv/tick/quest/40/fin/mira_wedge
execute if score #temp main_story matches 440 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「ヴァルカさんの鍛冶場は、広場の西です。素材を三つ、忘れずに」"}]
execute if score #temp main_story matches 441 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「広場で、オルドさまが待っています」"}]
execute if score #temp main_story matches 442..443 run return run function neofunction:system/adv/tick/quest/40/fin/443
execute if score #temp main_story matches 444..445 unless entity @e[type=ghast,tag=rubra_void] run return run function neofunction:system/adv/tick/quest/40/fin/443_retry
execute if score #temp main_story matches 444..445 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「湖の上の、あの渦を！ 旅人さん、星葬弓で！」"}]
execute if score #temp main_story matches 446 as @p run return run function neofunction:system/adv/tick/quest/40/fin/446_show
execute if score #temp main_story matches 447 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「星の子を、守って！」"}]
execute if score #temp main_story matches 449 if data storage neofunction:rubra {ending:"B"} run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「……旅人さん。わたし、もうすぐ街を出ます。星の声が聞こえる場所を、探しに」"}]
execute if score #temp main_story matches 449 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「夜空の、あの赤い星。……ちゃんと、見えてますか？」"}]
tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「……星の声、また聞こえないかな」"}]
