# 命名：other
# 説明：共通処理：クエスト重複時返金処理
# 説明：自動
# >/function neofunction:asset/event/quest/fail_pattern/duplicate
# =/function neofunction:asset/event/quest/fail/other




## 内容
title @s actionbar [{"text":"複数のクエストを受注","color":"#DE2C3E","bold":true,"italic":false,"underlined":true},{"text":"することは出来ません、返金しました。","color":"black","underlined":false}]
playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.0 2.0
tag @s remove other



