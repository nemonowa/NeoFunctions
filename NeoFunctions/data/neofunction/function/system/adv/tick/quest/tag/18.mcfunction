# 命名：18
# 説明：クエスト個別タグ付与&重複受注検知
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/tag/18

#内容
# もし quest_18 を持っていれば → 重複返金処理 →処理終了
execute if entity @s[tag=quest18] run tag @s add duplicate
execute if entity @s[tag=quest18] run tag @s add refund18
execute if entity @s[tag=quest18] run return run function neofunction:asset/event/quest/refund

# もし　quest18　を持っていないかつ quest を持っている場合（他のクエストは受注しているが対象のクエストは受けてない場合）→　通常返金処理 → 処理終了
execute if entity @s[tag=!quest18,tag=quest] run tag @s add other
execute if entity @s[tag=!quest18,tag=quest] run tag @s add refund18
execute if entity @s[tag=!quest18,tag=quest] run return run function neofunction:asset/event/quest/refund

# もし ↑二つの条件に満たなければ → 正常受注
execute if entity @s run tag @s add quest18

#スタート演出へ
execute as @s run function neofunction:asset/event/quest/start
