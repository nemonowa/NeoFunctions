# 命名：14
# 説明：クエスト個別タグ付与&重複受注検知
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/tag/14

#内容
# もし quest_14 を持っていれば → 重複返金処理 →処理終了
execute if entity @a[tag=quest14] run tag @s add duplicate
execute if entity @a[tag=quest14] run tag @s add refund14
execute if entity @a[tag=quest14] run return run function neofunction:asset/event/quest/refund

# もし　quest14　を持っていないかつ quest を持っている場合（他のクエストは受注しているが対象のクエストは受けてない場合）→　通常返金処理 → 処理終了
execute if entity @s[tag=!quest14,tag=quest] run tag @s add other
execute if entity @s[tag=!quest14,tag=quest] run tag @s add refund14
execute if entity @s[tag=!quest14,tag=quest] run return run function neofunction:asset/event/quest/refund

# もし ↑二つの条件に満たなければ → 正常受注
execute if entity @s run tag @s add quest14

#スタート演出へ
execute as @s run function neofunction:asset/event/quest/start

# 受注したとき「ごとごとごとごと！」みたいな逃げ出した効果音入れたい
playsound minecraft:entity.horse.ambient record @s ~ ~ ~ 1 1 1
playsound minecraft:entity.minecart.riding record @s ~ ~ ~ 1 1.5 1
playsound minecraft:entity.minecart.riding record @s ~ ~ ~ 1 0.5 1
playsound minecraft:entity.sheep.ambient record @s ~ ~ ~ 1 0.5 1

