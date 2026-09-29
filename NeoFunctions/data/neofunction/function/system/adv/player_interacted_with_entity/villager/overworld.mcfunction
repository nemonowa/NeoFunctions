# 命名：overworld
# 説明：
# >
# =/function neofunction:system/adv/player_interacted_with_entity/villager/overworld


# チャット
execute as @e[limit=1,sort=nearest,type=villager] run execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ようこそ！」"}]
execute as @e[limit=1,sort=nearest,type=villager] run execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「いらっしゃい！」"}]
execute as @e[limit=1,sort=nearest,type=villager] run execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ハァン？」"}]
execute as @e[limit=1,sort=nearest,type=villager] run execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ドーモ！クラフター=サン、ヴィレジャーデス。」"}]
execute as @e[limit=1,sort=nearest,type=villager] run execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ﾌｯ…ただの人間が…」"}]
execute as @e[limit=1,sort=nearest,type=villager] run execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「何の要だ？スモールノーズ？」"}]
execute as @e[limit=1,sort=nearest,type=villager] run execute as @a[distance=..8] run tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> 「・・・。」"}]







