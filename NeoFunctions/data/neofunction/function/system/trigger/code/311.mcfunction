# 命名：311（旧:48）
# 説明：[整理 2026-08-13] 旧番号:48 → 新番号:311（呼び出し元の /trigger code set 48 は 311 に要修正）
# 説明：スペルブック:結界術「剛撃陣」
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/311



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1341.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"結界術「剛撃陣」を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1341.0f]}] 1

advancement grant @s only neoadvancement:neoskill/49