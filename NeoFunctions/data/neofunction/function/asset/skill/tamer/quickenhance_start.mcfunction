# 命名：tamer/quickenhance_start
# 説明：237の発光監視ループを起動する（多重起動防止マーカーを設置してから開始）
# >/function neofunction:asset/skill/237 実行者unless entity @e[tag=tamerQuickEnhanceLoopRunning] 実行位置0 0 0
# =/function neofunction:asset/skill/tamer/quickenhance_start

summon minecraft:marker ~ ~ ~ {Tags:["tamerQuickEnhanceLoopRunning"]}
function neofunction:asset/skill/tamer/quickenhance_tick
