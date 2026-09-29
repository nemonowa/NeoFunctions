# 命名：villager_loop
# 説明：（説明未記載）
# >
# =/function admin:system/update/villager_loop

function admin:system/update/.neo {pass:"Trade[0].buy"}

function admin:system/update/.neo {pass:"Trade[0].buyB"}


function admin:system/update/.neo {pass:"Trade[0].sell"}


data modify storage admin:update TradeAfter append from storage admin:update Trade[0]
data remove storage admin:update Trade[0]
execute if data storage admin:update Trade[0] run function admin:system/update/villager_loop