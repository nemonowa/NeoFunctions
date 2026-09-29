# 命名：33
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/33


tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"パレスオブセレスタに向かい、黄金穀倉ルクスイーファのセレスティアルクリスタルを納品する。","color":"white","bold":true,"italic":false,"underlined":false}]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

scoreboard players set #temp main_story 45
function neofunction:system/adv/tick/quest/main_end