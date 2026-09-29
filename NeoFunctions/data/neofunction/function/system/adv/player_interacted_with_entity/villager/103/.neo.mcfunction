# 命名：.neo
# 説明：ここにニールさんに話しかけたときの処理を書く！！！！
# 説明：実行者；ニール
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/103/.neo



#メインクエストを受注してて特定の進行率の場合は、イベント処理を開始しつつ、処理を抜ける
#会話中は進行しない
execute if score #progressing main_story matches 1 run return 0
execute if score #temp main_story matches 31 run return run function neofunction:system/adv/tick/quest/30/1
execute if score #temp main_story matches 32 run return run function neofunction:system/adv/tick/quest/30/2
execute if score #temp main_story matches 33 run return run function neofunction:system/adv/tick/quest/30/3
execute if score #temp main_story matches 34 run return run function neofunction:system/adv/tick/quest/30/4
execute if score #temp main_story matches 35 run return run function neofunction:system/adv/tick/quest/30/5
execute if score #temp main_story matches 36 run return run function neofunction:system/adv/tick/quest/30/6
execute if score #temp main_story matches 37 run return run function neofunction:system/adv/tick/quest/30/7
execute if score #temp main_story matches 38 run return run function neofunction:system/adv/tick/quest/30/8
execute if score #temp main_story matches 39 as @p[advancements={neofunction:player_interacted_with_entity/villager=true}] if entity @s[advancements={neoadvancement:2/121=true}] as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] run return run function neofunction:system/adv/tick/quest/30/9
#40,41番はクラウス
execute if score #temp main_story matches 42 run return run function neofunction:system/adv/tick/quest/30/12
execute if score #temp main_story matches 43 as @p[advancements={neofunction:player_interacted_with_entity/villager=true}] if entity @s[advancements={neoadvancement:2/121=true,neoadvancement:2/122=true,neoadvancement:2/123=true,neoadvancement:2/124=true}] as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] run return run function neofunction:system/adv/tick/quest/30/13



# ランダム値を抽選
execute store result score random temp run random value 1..7

# ランダム値に応じてコマンドを実行
execute if score random temp matches 1 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「あ、旅の御方！ 本日もお疲れ様でございます。……ひえっ！？ い、いえ！ 影から突然お声がけしてしまったかと思って、私の方が驚いてしまいましたぞ……！」"}]
execute if score random temp matches 1 run playsound minecraft:entity.villager.yes record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 2 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ルクス商会の帳簿なら、寸分の狂いもございません！マモン1枚の計算違いで、昨晩もコンチネンタルさんと夜通し議論になりかけましたからな……ふぅ。」"}]
execute if score random temp matches 2 run playsound minecraft:entity.villager.yes record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 3 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ミラベルさんの防具の仕立ては超一流なのですが、素材の請求書を出す時の笑顔が少々怖くてですね……。」"}]
execute if score random temp matches 3 run playsound minecraft:entity.villager.yes record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 4 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「旅の御方とのお約束は、ちゃんとこの帳簿の最優先事項に記してありますぞ！」"}]
execute if score random temp matches 4 run playsound minecraft:entity.villager.yes record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 5 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「コンチネンタルさんは、畑のことになると急に頑固になりますからねぇ……。」"}]
execute if score random temp matches 5 run playsound minecraft:entity.villager.yes record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 6 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「うわ～！今日カエルに襲われたのです！服がぬめぬめなのですぞ～～！」"}]
execute if score random temp matches 6 run playsound minecraft:entity.villager.yes record @a[distance=..8] ~ ~ ~ 1 1 1

# 分岐：ケロリン攻略後の場合
#execute if score random temp matches 5 run tellraw @a[advancements={neoadvancement:ceresta/root1/8=false},distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「海の亡霊は夜霧とともに何度も復活する...つまり何度でも叩き潰せるってわけだ！」"}]
#execute if score random temp matches 6 run tellraw @a[advancements={neoadvancement:ceresta/root1/8=false},distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「その実力なら南に行っても少しは持つだろう！たまに戻ってこい、土産話を期待してるぜ。」"}]
#execute if score random temp matches 7 run tellraw @a[advancements={neoadvancement:ceresta/root1/8=false},distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「俺が初めてサラザールを討ったのは19のときだったか...」",hover_event:{"action":"show_text","value":[{"text":"おそらくレベルのことだろう..."}]}}]



## 分岐：初めて話しかけた場合
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「新入りか、俺はここの野営地で頭領をやってるもんだ」"}]
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「挨拶がわりと言っちゃぁなんだが先立つ路銀が必要だろ？」"}]
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「これはこの島のマモンと呼ばれる通貨だ」"}]
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「露店でも見ていけ。飯に武器に道具大体なんでも揃ってるぜ？」"}]

# loot spawn ~ ~ ~ loot neofunction:item/mamon/32
# execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}





