# 命名：765
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/764


# 説明：フェイス話しかけたときの固有処理！
#メインクエストを受注してて特定の進行率の場合は、イベント処理を開始しつつ、処理を抜ける
#会話中は進行しない
execute if score #progressing main_story matches 1 run return 0
execute if score #temp main_story matches 44 run return run function neofunction:system/adv/tick/quest/30/14

execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「黄金麦が風に揺れる音……私はあれが、とても好きなの。まるで女神様が歌っているみたいでしょう？」"}]
execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「セレスタ様は、いつも私たちを見守ってくださっているわ。」"}]
execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「豊穣に感謝を。命の巡りに祝福を。」"}]
execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「風はあなたを導き、大地はあなたを支えるでしょう。」"}]
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「あなたの旅路に、女神の祝福がありますように。」"}]

