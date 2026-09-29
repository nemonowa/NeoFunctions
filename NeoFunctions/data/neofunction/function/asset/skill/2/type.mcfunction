# 命名：type
# 説明：存在解析処理
# 実行条件：アンカーポイントを解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/type


# 分類2 レベル
execute as @s[type=#minecraft:undead] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"種族"},{"text":"【アンデット種】","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]

execute as @s[tag=cuboid] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"種族"},{"text":"【キューボイド種】","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"スライム、シュルカー、ガスト、アルマジロ、アイ族"}]}}]

execute as @s[tag=insect] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"種族"},{"text":"【インセクト種】","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]

execute as @s[tag=eye] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"種族"},{"text":"【アイ種】","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]

