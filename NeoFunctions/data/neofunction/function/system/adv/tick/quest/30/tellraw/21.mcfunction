# 命名：21
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/21

execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/602"}] run effect give @s glowing infinite 127 true

execute in neodimension:ceresta_festa run forceload remove 917 1107

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"ビリーの野営地にもどり、錬金術師と会話する。","color":"white","bold":true,"italic":false,"underlined":false}]


scoreboard players set #temp main_story 40
function neofunction:system/adv/tick/quest/main_end
