# 命名：w15
# 説明：ウェーブ処理(最終波)
# >/function neofunction:asset/event/froggame/w14
# =/function neofunction:asset/event/froggame/froggameresult


# 内容(最終ウェーブ・全種投入 / 計16体)

title @a[tag=froggame] subtitle [{"color":"#FFE45E","text":"F"},{"color":"#FFD75E","text":"r"},{"color":"#FFCA5E","text":"o"},{"color":"#FFBD5E","text":"g "},{"color":"#FFB05E","text":"G"},{"color":"#FFA35E","text":"a"},{"color":"#FF965E","text":"m"},{"color":"#FF895E","text":"e "},{"color":"#FF785E","text":"– "},{"color":"#FF895E","text":"R"},{"color":"#FF965E","text":"e"},{"color":"#FFA35E","text":"s"},{"color":"#FFB05E","text":"u"},{"color":"#FFBD5E","text":"l"},{"color":"#FFCA5E","text":"t"}]
title @a[tag=froggame] title [{"text":"|||","color":"gold","bold":true,"obfuscated":true},{"text":" TIME UP ","color":"yellow","obfuscated":false},{"text":"|||","color":"gold","bold":true,"obfuscated":true}]
execute as @a[tag=froggame] at @s run playsound minecraft:entity.player.levelup record @s ~ ~ ~ 1 1.0
