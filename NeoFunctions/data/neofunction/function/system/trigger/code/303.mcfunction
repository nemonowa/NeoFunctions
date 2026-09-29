# 命名：303（旧:5）
# 説明：[整理 2026-08-13] 旧番号:5 → 新番号:303（呼び出し元の /trigger code set 5 は 303 に要修正）
# 説明：スペルブック:マナ・ハウリング
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/303



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1573.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"スキル「マナ・ハウリング」を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1573.0f]}] 1

advancement grant @s only neoadvancement:neoskill/5

