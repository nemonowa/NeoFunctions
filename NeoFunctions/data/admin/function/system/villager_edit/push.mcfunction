# 命名：push
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/push
function neofunction:system/hand
$execute if data storage neofunction:hand item run data modify entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Id)].$(Slot) set from storage neofunction:hand item
function neofunction:system/hand
$execute unless data storage neofunction:hand item run data remove entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Id)].$(Slot)
function admin:system/villager_edit/view