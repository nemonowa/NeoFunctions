# 命名：next_macro
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/view/next_macro
$execute unless data entity @e[tag=EditedVillager,limit=1] Offers.Recipes[$(Slot)] run scoreboard players remove #VillagerEdit.Slot temp 1
