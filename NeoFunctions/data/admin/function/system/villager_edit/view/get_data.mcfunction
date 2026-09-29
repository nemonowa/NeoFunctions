# 命名：get_data
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/view/get_data
$data modify storage admin:villager_edit TradeData set from entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Slot)]