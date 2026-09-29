# 命名：104
# 説明：ここに話しかけたときの処理を書く！！！！
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/104


## 通常：
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「我は世界の物理法則を司る神だハボ！」"}]
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「物理演算的には『セーフ』だハボ！」"}]
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「それは『ガバ』だハボねぇ」"}]
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ハボハボ！」"}]

