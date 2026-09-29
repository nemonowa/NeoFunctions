# 命名：sundown
# 説明：夜処理
# >/function neofunction:system/adv/time_check/22000
# =/function neofunction:asset/event/sundown



# 夜通知　tellraw @s {"text":"sundown!!","color":"red"}

title @s subtitle [{"color":"#FF8800","text":"= "},{"color":"#EF7D15","text":"N"},{"color":"#E0712B","text":"i"},{"color":"#D06640","text":"g"},{"color":"#C15B55","text":"h"},{"color":"#B14F6A","text":"t "},{"color":"#A24480","text":"h"},{"color":"#923995","text":"a"},{"color":"#822DAA","text":"s "},{"color":"#7322BF","text":"c"},{"color":"#6317D5","text":"o"},{"color":"#540BEA","text":"m"},{"color":"#4400FF","text":"e "},{"color":"#540BEA","text":"☪ "},{"color":"#6317D5","text":"M"},{"color":"#7322BF","text":"o"},{"color":"#822DAA","text":"o"},{"color":"#923995","text":"n  "},{"color":"#A24480","text":"f"},{"color":"#B14F6A","text":"a"},{"color":"#C15B55","text":"d"},{"color":"#D06640","text":"e"},{"color":"#E0712B","text":"s "},{"color":"#FF8800","text":"="}]

title @s title {"bold":true,"color":"#4400FF","text":"Passed the day","underlined":true}


playsound entity.warden.agitated master @s ~ ~ ~ 10 0.5 1.0

#夜バフ
execute if score night temp matches -1 as @e[tag=enemy] run function neofunction:entity/attribute/night


## 探求時間表示処理
# 変換したいスコアを呼び出しファンクションに記入
execute store result score survival temp run time query gametime

# 変換
function neofunction:system/scoreboard/time

# 表示
tellraw @s [{"text":"* 探求時間 ","color":"blue","bold":true,"italic":false,"underlined":true},{"score":{"name":"second","objective":"temp"}},{"text":"時間"},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]