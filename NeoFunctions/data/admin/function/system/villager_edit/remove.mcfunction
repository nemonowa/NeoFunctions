# 命名：remove
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/remove
execute store result storage admin:villager_edit Slot int 1 run scoreboard players get #VillagerEdit.Slot temp
function admin:system/villager_edit/remove_macro with storage admin:villager_edit
function admin:system/villager_edit/view