# 命名：46494649
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/46494649



## 内容：詫び石
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1674.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]
loot give @s loot neofunction:item/813
tellraw @s {"text":"Secret Code 46494649【詫び石】が認証されました！","color":"aqua","bold":false}
clear @s minecraft:diamond[minecraft:custom_model_data={floats:[1674.0f]}] 1
