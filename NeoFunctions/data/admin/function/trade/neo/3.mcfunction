# 命名：3
# 説明：交易作成共通処理：通知
# >/function neofunction:system/1_detection
# =/function admin:trade/neo/3


#通知
tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false},{"selector":"0-0-0-0-1","underlined":false},{"text":">","color":"white","bold":false,"italic":false,"underlined":false},{"text":" TraderLab","color":"aqua"},{"text":"より入電です。\n","bold":false,"italic":false},{"text":"<<","color":"white","bold":false,"italic":false},{"selector":"@p","color":"white","bold":true},{"text":"が","color":"white","bold":false,"italic":false},{"selector":"@s","bold":true,"italic":false},{"text":"の交易品を作成しました。>>","color":"white","bold":false,"italic":false},{"text":"over.","color":"light_purple","bold":false,"italic":false}]