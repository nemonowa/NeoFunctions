# 命名：team
# 説明：チーム分け(文末のチームが優先・上書きされる)
# 説明：エンティティ初期スポーン時。
# >/function neofunction:entity/.spawn/.neo
# =/function neofunction:entity/.spawn/team


execute as @s[tag=ally] run team join green @s
execute as @s[tag=safe] run team join gray @s
execute as @s[tag=enemy] run team join red @s

execute as @s[type=player] run team join white @s
execute as @s[type=spawner_minecart] run team join dark_blue @s

execute as @s[tag=ghost] run team join white @s
execute as @s[tag=king] run team join dark_red @s

execute as @s[tag=argonaute] run team join light_purple @s