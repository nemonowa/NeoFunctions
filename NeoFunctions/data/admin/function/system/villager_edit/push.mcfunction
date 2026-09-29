# 命名：push
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/push
$execute if data entity @s SelectedItem run data modify entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Id)].$(Slot) set from entity @s SelectedItem
$execute unless data entity @s SelectedItem run data remove entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Id)].$(Slot)
function admin:system/villager_edit/view