# 命名：before
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/view/before
execute if score #VillagerEdit.Slot temp matches 1.. run scoreboard players remove #VillagerEdit.Slot temp 1
function admin:system/villager_edit/view