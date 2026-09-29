# 命名：94
# 説明：トリガー：どこからでも即地獄へ転移できる（ネクロノミコン
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/94


# テレポート
execute unless data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[292.0f]}}}] run return run tellraw @s [{"text":"注：実行条件を満たしていない！"}]

execute in minecraft:the_nether run spreadplayers ~ ~ 99 99 false @s


# 消費SP
execute unless biome ~ ~ ~ neodimension:pointnemo run scoreboard players remove @s SP 100
