# 命名：sunrise
# 説明：夜明け処理
# >/function neofunction:system/adv/time_check/22000
# =/function neofunction:asset/event/sunrise



# 夜明け通知
title @s subtitle [{"color":"#4400FF","text":"= "},{"color":"#540BEA","text":"T"},{"color":"#6317D5","text":"h"},{"color":"#7322BF","text":"e "},{"color":"#822DAA","text":"s"},{"color":"#923995","text":"u"},{"color":"#A24480","text":"n "},{"color":"#B14F6A","text":"r"},{"color":"#C15B55","text":"i"},{"color":"#D06640","text":"s"},{"color":"#E0712B","text":"e"},{"color":"#EF7D15","text":"s"},{"color":"#FF8800","text":" ✹ "},{"color":"#EF7D15","text":"D"},{"color":"#E0712B","text":"a"},{"color":"#D06640","text":"w"},{"color":"#C15B55","text":"n "},{"color":"#B14F6A","text":"b"},{"color":"#A24480","text":"r"},{"color":"#923995","text":"e"},{"color":"#822DAA","text":"a"},{"color":"#7322BF","text":"k"},{"color":"#6317D5","text":"s "},{"color":"#4400FF","text":"="}]

title @s title {"bold":true,"color":"#FF8800","text":"Survived the day","underlined":true}

playsound minecraft:entity.chicken.death record @s ~ ~ ~ 10 0.8 1

# 夜バフ消す
execute as @e[tag=enemy] run function neofunction:entity/attribute/night_remove

# 日数を進める
schedule function neofunction:system/scoreboard/add 1s replace

# 難易度上昇
scoreboard players add difficulty world 1


## 生存時間表示処理
# 変換したいスコアを呼び出しファンクションに記入
scoreboard players operation survival temp = @s survival

# 変換
function neofunction:system/scoreboard/time

# 表示
tellraw @s [{"text":"* 生存時間 ","color":"aqua","bold":true,"italic":false,"underlined":true},{"score":{"name":"second","objective":"temp"}},{"text":"時間"},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]

#ニールさんの取引アイテムを変更する。
execute in neodimension:ceresta_festa run forceload add 676 2198
schedule function neofunction:entity/villager/103/schedule 5s
