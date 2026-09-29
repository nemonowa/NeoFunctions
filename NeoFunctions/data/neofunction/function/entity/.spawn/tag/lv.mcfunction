# 命名：lv
# 説明：エンティティ処理
# 説明：カスタムタグを持っている=カスタムエンティティ
# >/function neofunction:entity/.spawn/mob
# =/function neofunction:entity/.spawn/tag/lv


#レベル補正
tag @s[scores={HPmax=..10}] add lv0
tag @s[scores={HPmax=11..20}] add lv1
tag @s[scores={HPmax=21..39}] add lv2
tag @s[scores={HPmax=40..99}] add lv3
tag @s[scores={HPmax=100..199}] add lv4
tag @s[scores={HPmax=200..500}] add lv5
tag @s[scores={HPmax=501..}] add lv6