# 命名：633
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/633


# 説明：ルーヴェン話しかけたときの固有処理！
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ここにある植物は、どれも君を嫌っている」"}]
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「私の耳なんてとっくに潰れている。」"}]
execute if predicate neofunction:random_chance/50 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「……料金は前払いだ」"}]

tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ようこそ、マンドラゴア遊栽所へ」"}]

