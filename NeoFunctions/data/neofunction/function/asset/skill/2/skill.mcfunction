# 命名：skill
# 説明：存在解析処理
# 実行条件：アンカーポイントを解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/skill


# 分類2 レベル
execute as @s[tag=warp] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"スキル"},{"text":"【ワープ】","color":"light_purple",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]

execute as @s[tag=heal] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"スキル"},{"text":"【ヒール】","color":"light_purple",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]

execute as @s[tag=portal] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"スキル"},{"text":"【亜空間転移】","color":"light_purple",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]