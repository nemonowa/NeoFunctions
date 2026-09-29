# 命名：pull
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/pull
summon item_display ~ ~ ~ {Tags:["resolve","del"],view_range:0}
$data modify entity @e[tag=resolve,limit=1,sort=nearest] item set from entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Id)].$(Slot)
item replace entity @s weapon.mainhand from entity @e[tag=resolve,limit=1,sort=nearest] container.0
kill @e[tag=resolve,limit=1,sort=nearest]
function admin:system/villager_edit/view
