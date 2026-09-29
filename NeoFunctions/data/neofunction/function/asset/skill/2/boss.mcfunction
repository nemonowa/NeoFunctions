# 命名：boss
# 説明：存在解析処理
# 実行条件：アンカーポイントを解析したときの処理
# >/function neofunction:asset/skill/2/.neo
# =/function neofunction:asset/skill/2/boss


# エンティティの格
execute as @s[team=god] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"特殊個体"},{"text":"【ゴッド・エンティティ】","color":"gold",hover_event:{"action":"show_text","value":[{"text":"神格存在。キングタグ付与。永続耐性5。"}]}}]

execute as @s[team=king] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"特殊個体"},{"text":"【キング・エンティティ】","color":"yellow",hover_event:{"action":"show_text","value":[{"text":"大ボス。ボスタグ付与。永続耐性4。ポーションや転移スキルをレジストする。"}]}}]

execute as @s[team=boss] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"特殊個体"},{"text":"【ボス・エンティティ】","color":"red",hover_event:{"action":"show_text","value":[{"text":"ボス。エリートタグ付与。永続耐性3。ボスバー。即死スキルなどをレジストする。"}]}}]

execute as @s[team=elite] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"特殊個体"},{"text":"【エリート・エンティティ】","color":"red",hover_event:{"action":"show_text","value":[{"text":"アップグレード・エンティティ。永続耐性2。デスポしない。発光。エンカウントアナウンス。被ダメで加速"}]}}]