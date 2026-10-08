# 命名：811
# 説明：【追加：2026-10-08 ルブラ編】ミラに話しかけたとき。進み具合に合わせたひとこと（次にすることの手がかり）。欠片が手元にない人には予備を渡す
# 実行条件：実行者・実行位置 ミラ（村人、DeathLootTable neofunction:asset/summon/811）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/811

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
# 欠片をなくした人に予備（411〜413）
execute if score #temp main_story matches 411..413 unless data storage neofunction:rubra d1{solved:1b} as @p unless items entity @s container.* minecraft:red_dye[minecraft:custom_model_data={floats:[1867.0f]}] unless items entity @s weapon.offhand minecraft:red_dye[minecraft:custom_model_data={floats:[1867.0f]}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/811_spare
execute if score #temp main_story matches 410 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「まずはバルドさんに、足跡のことを聞いてみましょう」"}]
execute if score #temp main_story matches 411 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「深い層では、欠片をオフハンドに持ってくださいね。星の光は消えないから」"}]
execute if score #temp main_story matches 412..413 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「壁の文字のとおりに、台の光の色を星の色に合わせて……そろったら鐘を鳴らすんです」"}]
execute if score #temp main_story matches 414..415 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「赤く光ってるところを狙って！」"}]
execute if score #temp main_story matches 416 as @p run return run function neofunction:system/adv/tick/quest/40/d1/choice_show
execute if score #temp main_story matches 417 run return run tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「バルドさんに、知らせましょう」"}]
tellraw @p [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「……星の声、また聞こえないかな」"}]
