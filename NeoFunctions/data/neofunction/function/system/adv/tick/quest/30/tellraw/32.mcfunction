# 命名：32
# 説明：（説明未記載）
# >/このファンクションはfunction neofunction:system/adv/tick/quest/30/numberまたは汎用会話モジュールのCommandから叩かれています。ご確認ください。
# =/function neofunction:system/adv/tick/quest/30/tellraw/32


title @a subtitle [{"text":"～","color":"white","bold":true,"italic":false},{"text":"豊穣","color":"#1F7687","bold":true,"italic":false},{"text":"と","bold":true,"italic":false},{"text":"神秘","color":"light_purple","bold":true,"italic":false},{"text":"の","bold":true,"italic":false},{"text":"大自然島","color":"#3FBF66","bold":true,"italic":false},{"text":"～","bold":true,"italic":false}]
title @a title {"text":"セレスタフェスタ","color":"#C3D825","bold":true,"italic":false,"underlined":true}
tellraw @a [{"text":"世界目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"7色のセレスティアルクリスタルを蒐集(しゅうしゅう)し、パレスオブセレスタに奉納し、祝祭のブーケを拾う。","color":"white","bold":true,"italic":false,"underlined":false}]

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

schedule function neofunction:system/adv/tick/quest/30/tellraw/33 7s