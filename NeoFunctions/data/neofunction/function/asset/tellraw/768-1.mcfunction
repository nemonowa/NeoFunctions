# 命名：738-1
# 説明：追加効果CD終了時通知
# >/function neofunction:system/trigger/code/502
# =/function neofunction:asset/tellraw/768-1



# 内容
# 閉じ側と同じ "text":"|||" の打ち間違いと判断して直す
tellraw @a[tag=temp233] [{"text":"<"},{"text":"|||","color":"dark_blue","bold":true,"italic":false,"obfuscated":true},{"text":" Grand Archevêque de l'Équilibre ","color":"dark_red","bold":true,"italic":false},{"text":"|||","color":"dark_blue","bold":true,"italic":false,"obfuscated":true},{"text":"> "},{"text":"「ならば今度こそ、真なる試練を授けよう。」","color":"dark_gray","bold":true,"italic":false}]