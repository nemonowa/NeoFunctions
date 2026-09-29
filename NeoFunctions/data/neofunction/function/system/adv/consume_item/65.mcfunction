# 命名：65
# 説明：ハーフエリクサー
# >/function neofunction:consume_item/65
# =/function neofunction:system/adv/consume_item/65


## 内容（もとamp110~119 SP関係 
function neofunction:system/heal/50
function neofunction:player/sp/add/50p

tellraw @s {"text":"＊「ハーフエリクサー」HP・SP半回復","color":"dark_aqua","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text",value:[{"text":"HP・SPが回復した！"}]}}
function neofunction:asset/particle/.mp_heal
title @s actionbar [{"text":"SP回復 +50%｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
