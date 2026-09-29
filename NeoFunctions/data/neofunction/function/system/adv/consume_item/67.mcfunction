# 命名：67
# 説明：ウィルポーション
# >/function neofunction:consume_item/62
# =/function neofunction:system/adv/consume_item/67


## 内容（もとamp110~119 SP関係 
function neofunction:system/heal/100
function neofunction:player/sp/set/150p

tellraw @s {"text":"＊「ピュアエリクサー」HP・SP過剰回復","color":"dark_aqua","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text",value:[{"text":"HP・SPが自身の最大値を超えて回復"}]}}
function neofunction:asset/particle/.mp_heal
title @s actionbar [{"text":"SP回復 +150%｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
