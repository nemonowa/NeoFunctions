# 命名：next
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/view/next
scoreboard players add #VillagerEdit.Slot temp 1
execute store result storage admin:villager_edit Slot int 1 run scoreboard players get #VillagerEdit.Slot temp
function admin:system/villager_edit/view/next_macro with storage admin:villager_edit
function admin:system/villager_edit/view
