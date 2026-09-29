# 命名：.neo
# 説明：ここにシエラさんに話しかけたときの処理を書く！！！！
# 説明：実行者；シェーラだよ！
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/102/.neo


#発光を解除する。
effect clear @s minecraft:glowing
#メインクエストを受注してて特定の進行率の場合は、イベント処理を開始しつつ、処理を抜ける
#会話中は進行しない
execute if score #progressing main_story matches 1 run return 0
execute if score #temp main_story matches 21 run return run function neofunction:system/adv/tick/quest/20/1
execute if score #temp main_story matches 22 run return run function neofunction:system/adv/tick/quest/20/2
execute if score #temp main_story matches 23 run return run function neofunction:system/adv/tick/quest/20/3
execute if score #temp main_story matches 24 as @p[advancements={neofunction:player_interacted_with_entity/villager=true}] if entity @s[advancements={neoadvancement:2/114=true,neoadvancement:2/115=true,neoadvancement:2/116=true,neoadvancement:2/117=true}] at @s run return run function neofunction:system/adv/tick/quest/20/4
execute if score #temp main_story matches 25 as @p[advancements={neofunction:player_interacted_with_entity/villager=true}] if entity @s[advancements={neoadvancement:ceresta/root/2/9=true}] at @s run return run function neofunction:system/adv/tick/quest/20/5

# ランダム値を抽選
execute store result score random temp run random value 1..7

# ランダム値に応じてコマンドを実行
execute if score random temp matches 1 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「私はシエラよ」"}]
execute if score random temp matches 1 run playsound minecraft:neo/entity/siera/1 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 2 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ｳｯﾏｻﾝは砂糖や小麦、ニンジン、リンゴが好物よ！」"}]
execute if score random temp matches 2 run playsound minecraft:neo/entity/siera/2 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 3 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「小麦俵はｳｯﾏｻﾝの体力を♡x10も回復するの！」"}]
execute if score random temp matches 3 run playsound minecraft:neo/entity/siera/3 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 4 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ｳｯﾏｻﾝの毛並みの色は七種類あるの！」"}]
execute if score random temp matches 4 run playsound minecraft:neo/entity/siera/4 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 5 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ｳｯﾏｻﾝの模様は五種類あるの！」"}]
execute if score random temp matches 5 run playsound minecraft:neo/entity/siera/5 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 6 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「骨のｳｯﾏｻﾝは水中移動が得意なの！」"}]
execute if score random temp matches 6 run playsound minecraft:neo/entity/siera/6 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 7 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「腐のｳｯﾏｻﾝは再生能力が高いの！」"}]
execute if score random temp matches 7 run playsound minecraft:neo/entity/siera/7 record @a[distance=..8] ~ ~ ~ 1 1 1






