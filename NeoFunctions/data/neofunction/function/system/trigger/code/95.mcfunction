# 命名：95
# 説明：トリガー：マルチの友達に転移
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/95


# 実行失敗
execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return run tellraw @s {"text":"転移失敗：チュートリアル完了まで使用不可","color":"red","bold":true,"italic":false}

execute as @s at @s if entity @e[tag=enemy,distance=..16] run return run tellraw @s [{"text":"転移失敗：未元観測体が存在するため確率の希釈に失敗！","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"敵対エンティティ..16mが存在。"}]}}]

execute as @s at @s if entity @e[type=minecraft:spawner_minecart,distance=..32] run return run tellraw @s [{"text":"転移失敗：未元観測体が存在するため確率の希釈に失敗！","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"スポナー..32mが存在。"}]}}]

# テレポート
tp @s @a[limit=1,distance=1..,sort=furthest]


# 消費SP
execute unless biome ~ ~ ~ neodimension:pointnemo run scoreboard players remove @s SP 100
