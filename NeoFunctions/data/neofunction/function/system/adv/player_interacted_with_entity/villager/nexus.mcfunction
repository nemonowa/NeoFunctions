# 命名：nexus
# 説明：進捗達成時
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/nexus


# ランダム値を抽選
execute store result score random temp run random value 1..19

# ランダム値に応じてコマンドを実行
execute if score random temp matches 1 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「Welcome to NeoWorld！」"}]
execute if score random temp matches 2 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「Bon Voyage！」"}]
execute if score random temp matches 3 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「Good Luck！」"}]
execute if score random temp matches 4 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「May the pearl be with you…」"}]
execute if score random temp matches 5 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「Complete The Monument！」"}]
execute if score random temp matches 6 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「・・・。」"}]
execute if score random temp matches 7 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ご武運を！」"}]
execute if score random temp matches 8 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「エンパと共に在らんことを！」"}]
execute if score random temp matches 9 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「NEXUSで会おう！」"}]
execute if score random temp matches 10 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「初心者におすすめの配布マップはTUSB NEO！」"}]
execute if score random temp matches 11 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「スポナー壊すべし、慈悲はない。」"}]
execute if score random temp matches 12 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「願いの強さが力の大きさだ。」"}]
execute if score random temp matches 13 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ハロー、ニュービー！」"}]
execute if score random temp matches 14 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「貴官の称号は...竜殺しか。普通だな。種族は...クラフター種か当たりだな。」 "}]
execute if score random temp matches 15 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「さよなら、この記憶だけはそう消さないように。」"}]
execute if score random temp matches 16 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ターミナル（リス地）からやり直せ。」"}]
execute if score random temp matches 17 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ﾌｯ…ただの人間が…」"}]
execute if score random temp matches 18 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「ちなみに今日の副長さんの占いで大吉でしたが聞きたいことある？」"}]
execute if score random temp matches 19 run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「新装備なんだろ？試し斬りに行って来いよ！」"}]









