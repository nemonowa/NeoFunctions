# 命名：nowa
# 説明：nowaちゃんに話しかけたときの処理を書く！！！！
# >/neofunction:system/adv/player_interacted_with_entity/nowa
# =/function neofunction:system/adv/player_interacted_with_entity/nowa


# 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_interacted_with_entity/nowa

# ランダム値を抽選
execute store result score random temp run random value 1..9

# ランダム値に応じてコマンドを実行
execute if score random temp matches 1 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「どうしたのです〜？」"}]
execute if score random temp matches 1 run playsound minecraft:neo/entity/nowa/1 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 2 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「交換しようなのです〜！」"}]
execute if score random temp matches 2 run playsound minecraft:neo/entity/nowa/2 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 3 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「おみくじするのです？」"}]
execute if score random temp matches 3 run playsound minecraft:neo/entity/nowa/3 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 4 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「どーなっつを食べるのです！」"}]
execute if score random temp matches 4 run playsound minecraft:neo/entity/nowa/4 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 5 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「nemoは艦長室にいるのです〜」"}]
execute if score random temp matches 5 run playsound minecraft:neo/entity/nowa/5 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 6 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「polarは無敵の白熊さんなのです〜」"}]
execute if score random temp matches 6 run playsound minecraft:neo/entity/nowa/6 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 7 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「カイちゃんは艦の運営を手伝ってくれてるのです〜」"}]
execute if score random temp matches 7 run playsound minecraft:neo/entity/nowa/7 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 8 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「一緒にゆらゆらしたいのです(〜'ω'   )〜」"}]
execute if score random temp matches 8 run playsound minecraft:neo/entity/nowa/8 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 9 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「副長のnowaなのです！艦のみんなを見守るのです！」"}]
execute if score random temp matches 9 run playsound minecraft:neo/entity/nowa/9 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 10 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"0-0-0-0-0"},{"text":"> 「ゆっくりしていってね～！なのです！！！」"}]
execute if score random temp matches 10 run playsound minecraft:neo/entity/nowa/10 record @a[distance=..8] ~ ~ ~ 1 1 1




