# 命名：305（旧:7）
# 説明：[整理 2026-08-13] 旧番号:7 → 新番号:305（呼び出し元の /trigger code set 7 は 305 に要修正）
# 説明：スペルブック:マナ・ドッジ
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/305



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1575.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"スキル「マナ・ドッジ」を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1575.0f]}] 1

advancement grant @s only neoadvancement:neoskill/7

