# 命名：66
# 説明：エリクサー
# >/function neofunction:consume_item/66
# =/function neofunction:system/adv/consume_item/66


## 内容（もとamp110~119 SP関係 
function neofunction:system/heal/100
function neofunction:player/sp/set/100p


tellraw @s {"text":"＊「エリクサー」HP・SP完全回復","color":"dark_aqua","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text",value:[{"text":"HP・SPが自身の最大値になる"}]}}
function neofunction:asset/particle/.mp_heal
title @s actionbar [{"text":"SP回復 +100%｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
