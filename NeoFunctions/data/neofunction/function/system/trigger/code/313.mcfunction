# 命名：313（旧:50）
# 説明：[整理 2026-08-13] 旧番号:50 → 新番号:313（呼び出し元の /trigger code set 50 は 313 に要修正）
# 説明：スペルブック:結界術【再生陣】
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/313



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1343.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"結界術【再生陣】を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1343.0f]}] 1

advancement grant @s only neoadvancement:neoskill/51