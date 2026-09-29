# 命名：.neo
# 説明：ここにビリーさんに話しかけたときの処理を書く！！！！
# 説明：実行者；ビリーだよ！
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/101/.neo

#ビリーの発光を解除する。
effect clear @s minecraft:glowing
#ビリーに初めて話しかけたとき、メインストーリー開始
execute if score #temp main_story matches 0 unless score #started_mainquest_chapter1 main_story matches 1 run function neofunction:system/adv/tick/quest/10/start

#メインクエストを受注してて特定の進行率の場合は、イベント処理を開始しつつ、処理を抜ける
#会話中は進行しない
execute if score #progressing main_story matches 1 run return 0
execute if score #temp main_story matches 1 run return run function neofunction:system/adv/tick/quest/10/1
execute if score #temp main_story matches 2 run return run function neofunction:system/adv/tick/quest/10/2
execute if score #temp main_story matches 3 run return run function neofunction:system/adv/tick/quest/10/3
execute if score #temp main_story matches 4 run return run function neofunction:system/adv/tick/quest/10/4
execute if score #temp main_story matches 5 run return run function neofunction:system/adv/tick/quest/10/5
execute if score #temp main_story matches 6 run return run function neofunction:system/adv/tick/quest/10/6
execute if score #temp main_story matches 7 run return run function neofunction:system/adv/tick/quest/10/7
execute if score #temp main_story matches 8 run return run function neofunction:system/adv/tick/quest/10/8
execute if score #temp main_story matches 9 run return run function neofunction:system/adv/tick/quest/10/9
execute if score #temp main_story matches 10 run return run function neofunction:system/adv/tick/quest/10/10
execute if score #temp main_story matches 11 run return run function neofunction:system/adv/tick/quest/10/11
execute if score #temp main_story matches 12 run return run function neofunction:system/adv/tick/quest/10/12
execute if score #temp main_story matches 13 run return run function neofunction:system/adv/tick/quest/10/13
execute if score #temp main_story matches 14 run return run function neofunction:system/adv/tick/quest/10/14
#ビリーに話しかけた人が、対象アンカーを解析していなかったらテルロー 
execute as @a[advancements={neoadvancement:anchor/root/ceresta/108=false}] run execute if score #temp main_story matches 15 run return run tellraw @a[distance=..16] {"text":"▶ 前哨基地のアンカーを攻略することで、メインストーリーを進めることができます。","color":"#FFD4B8","bold":true,"italic":false}
#ビリーに話しかけた人が、対象アンカーを解析していることを条件に進行 
execute as @a[advancements={neoadvancement:anchor/root/ceresta/108=true}] run execute if score #temp main_story matches 15 run return run function neofunction:system/adv/tick/quest/10/15
#16は囚われのフルク起点
execute if score #temp main_story matches 17 run return run function neofunction:system/adv/tick/quest/10/17
#18はボス討伐で、目標提示、
execute as @a[advancements={neoadvancement:ceresta/root/1/9=true}] run execute if score #temp main_story matches 18 run return run function neofunction:system/adv/tick/quest/10/18


# ランダム値を抽選
execute store result score random temp run random value 1..9

# ランダム値に応じてコマンドを実行
execute if score random temp matches 1 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「俺はビリー、この野営地で頭領だ。」"}]
execute if score random temp matches 1 run playsound minecraft:neo/entity/biry/1 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 2 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ここは始まりの野営地。新たに漂流した異邦人を歓迎する場所だ。」"}]
execute if score random temp matches 2 run playsound minecraft:neo/entity/biry/2 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 3 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「戦闘ならポーションを忘れるなよ。ちょっとした傷ならライムリストアで治せる。」"}]
execute if score random temp matches 3 run playsound minecraft:neo/entity/biry/3 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 4 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「この島は広い。馬を買っていけ、異邦の英雄の嗜みだ。」"}]
execute if score random temp matches 4 run playsound minecraft:neo/entity/biry/4 record @a[distance=..8] ~ ~ ~ 1 1 1
execute if score random temp matches 5 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「セレスタフェスタのベリーはスペシャルだ！とりあえず食っとけ、免疫まで手に入るぞ。」"}]
execute if score random temp matches 5 run playsound minecraft:neo/entity/biry/5 record @a[distance=..8] ~ ~ ~ 1 1 1

# 分岐：特定の装備の場合
execute if entity @p[nbt={Inventory:[],equipment:{head:{components:{"minecraft:custom_model_data":{floats:[1157.0f]}}},chest:{components:{"minecraft:custom_model_data":{floats:[1154.0f]}}},legs:{components:{"minecraft:custom_model_data":{floats:[1155.0f]}}},feet:{components:{"minecraft:custom_model_data":{floats:[1156.0f]}}}}}] run tellraw @p [{"text":"<"},{"selector":"@s"},{"text":"> 「なり切ってるのは結構だが、その頭呪い付きだぞ？」"}]


# 分岐：サラザール攻略後の場合 #ガバ修正
execute if entity @a[advancements={neoadvancement:ceresta/root/1/8=false},distance=..8] run return 1

execute if score random temp matches 6 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「サラザールを討ったか！やるようになったじゃあねえか。」"}]
execute if score random temp matches 6 run playsound minecraft:neo/entity/biry/6 record @a[distance=..8] ~ ~ ~ 1 1 1

execute if score random temp matches 7 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「海の亡霊は夜霧とともに何度も復活する...つまり何度でも叩き潰せるってわけだ！」"}]
execute if score random temp matches 7 run playsound minecraft:neo/entity/biry/7 record @a[distance=..8] ~ ~ ~ 1 1 1

execute if score random temp matches 8 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「その実力なら南に行っても少しは持つだろう！たまに戻ってこい、土産話を期待してるぜ。」"}]
execute if score random temp matches 8 run playsound minecraft:neo/entity/biry/8 record @a[distance=..8] ~ ~ ~ 1 1 1

execute if score random temp matches 9 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「俺が初めてサラザールを討ったのは9のときだったか...」",hover_event:{"action":"show_text","value":[{"text":"おそらくレベルのことだろう..."}]}}]
execute if score random temp matches 9 run playsound minecraft:neo/entity/biry/9 record @a[distance=..8] ~ ~ ~ 1 1 1


## 分岐：初めて話しかけた場合
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「新入りか、俺はここの野営地で頭領をやってるもんだ」"}]
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「挨拶がわりと言っちゃぁなんだが先立つ路銀が必要だろ？」"}]
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「これはこの島のマモンと呼ばれる通貨だ」"}]
# tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「露店でも見ていけ。飯に武器に道具大体なんでも揃ってるぜ？」"}]

# loot spawn ~ ~ ~ loot neofunction:item/mamon/32
# execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}





