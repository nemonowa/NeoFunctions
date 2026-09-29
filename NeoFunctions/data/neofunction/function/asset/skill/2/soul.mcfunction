# 命名：soul
# 説明：存在解析処理
# 実行条件：アンカーポイントを解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/soul


# 分類2 レベル
execute as @s[tag=soul1] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"属性"},{"text":"【火属性】","color":"red",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]
execute as @s[tag=soul2] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"属性"},{"text":"【水属性】","color":"aqua",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]
execute as @s[tag=soul3] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"属性"},{"text":"【風属性】","color":"green",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]
execute as @s[tag=soul4] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"属性"},{"text":"【土属性】","color":"#6E3000",hover_event:{"action":"show_text","value":[{"text":"あうあ"}]}}]


