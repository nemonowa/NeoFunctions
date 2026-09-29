# 命名：620
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/620


# 説明：ルーヴェン話しかけたときの固有処理！
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「まず愛馬だ。」"}]

execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「この島は広大だ。」"}]

execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「世界を変える冒険の旅路に相棒もなしに何ができる？」"}]

tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「先従隗始...まず馬から始めることだ。」"}]

