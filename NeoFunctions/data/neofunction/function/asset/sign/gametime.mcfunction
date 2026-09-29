# 命名：gametime
# 説明：生存時間を表示するスペルサイン実行部
# >/function
# =/function neofunction:asset/sign/gametime



# 変換したいスコアを呼び出しファンクションに記入
execute store result score survival temp run time query gametime

# 変換
function neofunction:system/scoreboard/time

# 演出
playsound block.portal.trigger master @a[distance=..8] ~ ~ ~ 1 2 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

# 
tellraw @s [{"text":"* 生存時間 ","color":"aqua","bold":true,"italic":false,"underlined":true},{"score":{"name":"second","objective":"temp"}},{"text":"時間"},{"score":{"name":"minute","objective":"temp"}},{"text":"分"},{"score":{"name":"survival","objective":"temp"}},{"text":"秒"}]