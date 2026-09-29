# 命名：602
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/602


# 説明：クラウス話しかけたときの固有処理！
#メインクエストを受注してて特定の進行率の場合は、イベント処理を開始しつつ、処理を抜ける
#会話中は進行しない
execute if score #progressing main_story matches 1 run return 0
execute if score #temp main_story matches 40 run return run function neofunction:system/adv/tick/quest/30/10
execute if score #temp main_story matches 41 run return run function neofunction:system/adv/tick/quest/30/11

execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「君、私の後頭部を凝視するのはやめたまえ。」"}]
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「君、静かにしたまえ。」"}]

