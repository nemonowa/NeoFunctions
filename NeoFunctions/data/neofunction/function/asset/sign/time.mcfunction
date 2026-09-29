# 命名：time
# 説明：生存時間を表示するスペルサイン実行部
# >/function
# =/function neofunction:asset/sign/time



# 変換したいスコアを呼び出しファンクションに記入
scoreboard players operation survival temp = @s survival

# 変換
function neofunction:system/scoreboard/time

# 演出
playsound minecraft:entity.chicken.death record @a[distance=..8] ~ ~ ~ 1 1 1
particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

# 表示
tellraw @s [{"text":"* 生存時間 ","color":"aqua","bold":true,"italic":false,"underlined":true},{"score":{"name":"second","objective":"temp"}},{"text":"時間"},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]



#/setblock ~ ~ ~ minecraft:mangrove_sign{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"/function neofunction:asset/sign/time"},"color":"dark_gray","italic":false,"text":"۞スペルサイン۞"}','{"bold":false,"bold":true,"color":"dark_aqua","italic":false,"text":"生存時間","underlined":true}','{"bold":false,"italic":false,"text":"⌖ Survival Time ⌖","color":"blue"}','{"bold":true,"color":"dark_gray","italic":false,"keybind":"key.use"}']},is_waxed:0b}