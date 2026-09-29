# 命名：23
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/23


execute in neodimension:ceresta_festa as @e[nbt={DeathLootTable:"neofunction:asset/summon/103"}] run effect give @s glowing infinite 127 true

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"錬金術師クラウスに、ケロボーンを10本渡す。","color":"white","bold":true,"italic":false,"underlined":false}]



scoreboard players set #temp main_story 41
function neofunction:system/adv/tick/quest/main_end
