# 命名：10
# 説明：進捗達成時（クルーに接触
# 説明：クルーをインタラクションしたときに聞こえるランダムなセリフ
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/10


## 内容
tag @s[type=minecraft:villager] add del
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"あなたは一期一会であろう同航の士に話しかけてみた。"}]

execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は覚醒の救世主のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は優男の賞金首のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は亡国の反逆者のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は孤独の観測者のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は家業の十代目のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は滅竜の復讐者のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は散弾の革命家のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は不死の魔導王のようだ。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"相手は孤独の観測者のようだ。"}]

execute as @s[type=minecraft:villager] run return run tellraw @a[distance=..8] [{"text":"相手は§k不明§rの§k未知数§rのようだ。"}]




execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"遠くの星のように輝いて見えた。"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"顔や容姿を覚える間もない、一瞬の出会いだった。"}]

execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"「昔はお前のような冒険者だったのだが、膝に矢を受けてしまってな...」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"「ピザに矢を受けてしまってな…」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"「ひじに矢を受けてしまってな…」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"「膝矢」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"「ピザ屋」"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"§k理解不能"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"壁に向かって直進している…"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"何やら急いでいるようだ。"}]

execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"同じ根を持つ強い感情"}]
execute if predicate neofunction:random_chance/10 run return run tellraw @a[distance=..8] [{"text":"記憶の相手方に手を伸ばして君のいる場所へとそっと誘った。"}]



