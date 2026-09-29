# 命名：96
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/96


# 実行失敗
execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return run tellraw @s {"text":"転移失敗：チュートリアル完了まで使用不可","color":"red","bold":true,"italic":false}

execute as @s at @s if entity @e[tag=enemy,distance=..16] run return run tellraw @s [{"text":"転移失敗：未元観測体が存在するため確率の希釈に失敗！","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"敵対エンティティ..16mが存在。"}]}}]

execute as @s at @s if entity @e[type=minecraft:spawner_minecart,distance=..32] run return run tellraw @s [{"text":"転移失敗：未元観測体が存在するため確率の希釈に失敗！","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"スポナー..32mが存在。"}]}}]

# テレポート
function neofunction:system/pos/last_death_location


# 消費SP
execute unless biome ~ ~ ~ neodimension:pointnemo run scoreboard players remove @s SP 100
