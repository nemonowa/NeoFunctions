# 命名：912
# 説明：【追加：2026-10-09 ルブラ編】ヴァルカに話しかけたとき：440 で 3 つの素材（星の血晶・最初の泉の涙・天墜の楔）を持っていれば弓を打つ（fin/441）。ほかは、そのときのひとこと
# 実行条件：実行者・実行位置 ヴァルカ（村人 912）
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/912

# 内容
function neofunction:system/adv/tick/quest/40/d1/busy_check
execute if data storage neofunction:rubra {busy:1b} run return 0
execute if score #temp main_story matches 440 as @p if items entity @s container.* minecraft:resin_brick[minecraft:custom_model_data={floats:[1905.0f]}] if items entity @s container.* minecraft:ghast_tear[minecraft:custom_model_data={floats:[1907.0f]}] if items entity @s container.* minecraft:gold_nugget[minecraft:custom_model_data={floats:[1918.0f]}] run return run function neofunction:system/adv/tick/quest/40/fin/441
execute if score #temp main_story matches 440 run return run tellraw @p [{"text":"<"},{"text":"ヴァルカ","color":"#D9822B","bold":true},{"text":"> 「星を送る弓、だって？ ……素材を三つ、そろえて持ってきな。星の血晶、最初の泉の涙、天墜の楔だ」"}]
# 【変更：2026-10-14】弓を打ったあとは、話しかけるたびに弓と矢を渡す
execute if score #temp main_story matches 441..448 as @p run return run function neofunction:system/adv/tick/quest/40/fin/valka_bow
execute if score #temp main_story matches 441..448 run return run tellraw @p [{"text":"<"},{"text":"ヴァルカ","color":"#D9822B","bold":true},{"text":"> 「その弓は、子どもでも引ける。……引くのは、腕じゃなくて、覚悟さ」"}]
execute if score #temp main_story matches 449 run return run tellraw @p [{"text":"<"},{"text":"ヴァルカ","color":"#D9822B","bold":true},{"text":"> 「もう二度と使わないことを祈るよ。……でもまあ、飾っとくぶんには、いい弓だ」"}]
tellraw @p [{"text":"<"},{"text":"ヴァルカ","color":"#D9822B","bold":true},{"text":"> 「星鉄は気難しい。……だから、おもしろいのさ」"}]
