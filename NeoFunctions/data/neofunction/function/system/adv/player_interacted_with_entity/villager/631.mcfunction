# 命名：631
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/631


# 説明：ルーヴェン話しかけたときの固有処理！
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「入鹿だよ！！！」"}]

execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「イルカからルを取ったらイカになるね...なんちゃって」"}]

tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「イカしてるね！！！」"}]

