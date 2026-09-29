# 命名：4
# 説明：転移要請
# 説明：リンクオブネクサス：トリガーすると、ネクサスに接続し転移申請を表示する。SP100消費。
# >/function neofunction:system/trigger/code/100
# >/function neofunction:system/trigger/code/104
# =/function neofunction:asset/skill/4


# 実行失敗
# execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return run tellraw @s {"text":"転移失敗：チュートリアル完了まで使用不可","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"クリックでチュートリアル・プログラムを開始する"}]},click_event:{"action":"run_command",command:"/trigger code set 200"}}

execute as @s at @s if entity @e[tag=enemy,distance=..8] run return run tellraw @s [{"text":"転移失敗：未元観測体が存在するため確率の希釈に失敗！","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"敵対エンティティ..8mが存在。"}]}}]

execute as @s at @s if entity @e[type=minecraft:spawner_minecart,distance=..16] run return run tellraw @s [{"text":"転移失敗：未元観測体が存在するため確率の希釈に失敗！","color":"red","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"スポナー..16mが存在。"}]}}]

# チュートリアル中なら分岐
execute if entity @s[tag=Tutorial] run return run function neofunction:system/world/nexus/tutorial/finish

# ネクサスにテレポート
function neofunction:system/pos/.macro with storage pos:24

# アンカーから帰還
execute if entity @e[distance=..8,tag=marked,type=armor_stand] run return run tellraw @s {"text":"転移成功：次元アンカーからNEXUS帰還した！","color":"green","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"SP消費なし！！！"}]}}


# 条件付き固定値SP消費
execute unless dimension neodimension:nexus run scoreboard players remove @s SP 100

