# 命名：49
# 説明：スペルブック:結界術【硬化陣】
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/49



## 内容：
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1342.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

tellraw @s [{"text":"結界術【硬化陣】を習得した！"}]

playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1.5 1

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[1342.0f]}] 1

advancement grant @s only neoadvancement:neoskill/50