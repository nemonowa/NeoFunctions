# 命名：304（旧:6）
# 説明：[整理 2026-08-13] 旧番号:6 → 新番号:304（呼び出し元の /trigger code set 6 は 304 に要修正）
# 説明：スペルブック:マナ・ハート
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/304



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1574.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"スキル「マナ・ハート」を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1574.0f]}] 1

advancement grant @s only neoadvancement:neoskill/6

