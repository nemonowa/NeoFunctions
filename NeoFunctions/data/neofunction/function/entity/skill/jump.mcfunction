# 命名：jump
# 説明：エンティティ処理
# 説明：HPを持つ全エンティティ
# >/function neofunction:system/clock/5_second
# =/function neofunction:entity/skill/jump


# 内容
execute as @s[nbt={NoGravity:1b}] run return 0

execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.1d,0d]}
execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.2d,0d]}
execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.3d,0d]}
execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.4d,0d]}
execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.5d,0d]}
execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.6d,0d]}
execute if predicate neofunction:random_chance/15 run data merge entity @s {Motion:[0d,0.7d,0d]}
