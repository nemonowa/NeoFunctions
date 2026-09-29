# 命名：1673
# 説明：進捗達成時
# >/function neofunction:used_totem/1673
# =/function neofunction:system/adv/used_totem/1673


# 死亡時、ボンドルドがささやく、カルマが-10
scoreboard players remove @s karman 10

execute if predicate neofunction:random_chance/20 run return run tellraw @s {"text":"「おやおや、レシーマが終わってしまいました、将来の夢はお姫様だったんですよ。かわいいですね」","color":"gray"}
execute if predicate neofunction:random_chance/20 run return run tellraw @s {"text":"「おやおや、メレが終わってしまいました、好きな食べ物は奈落シチューだったんですよ。かわいいですね","color":"gray"}
execute if predicate neofunction:random_chance/20 run return run tellraw @s {"text":"「おやおや、ターキリが終わってしまいました、趣味はお裁縫だったんですよ。かわいいですね」","color":"gray"}
execute if predicate neofunction:random_chance/20 run return run tellraw @s {"text":"「おやおや、ノペロが終わってしまいました、先月は誕生日を喜んでいたんですよ。かわいいですね」","color":"gray"}
tellraw @s {"text":"「「ああ...本当に素晴らしい冒険でしたね...」","color":"gray"}



