# 命名：add
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/add
execute unless data entity @e[tag=EditedVillager,limit=1] Offers run return run function admin:system/villager_edit/add_0

scoreboard players add #VillagerEdit.Slot temp 1
execute store result storage admin:villager_edit Slot int 1 run scoreboard players get #VillagerEdit.Slot temp
function admin:system/villager_edit/add_macro with storage admin:villager_edit
function admin:system/villager_edit/view