# 命名：tosky
# 説明：印（rubra_tosky）の付いた人を、星還りの空の入口へ移す
# 実行条件：どこでも
# >/function neofunction:entity/skill/boss/rubra_void/start
# >/function neofunction:entity/skill/boss/rubra_void/start_2
# =/function neofunction:entity/skill/boss/rubra_void/tosky

# 内容
execute in neodimension:ceresta_festa run tp @a[tag=rubra_tosky] 921.5 200 3306.5 180 0
effect give @a[tag=rubra_tosky] minecraft:slow_falling 3 0 true
tag @a[tag=rubra_tosky] add rubra_sky_in
tag @a remove rubra_tosky
