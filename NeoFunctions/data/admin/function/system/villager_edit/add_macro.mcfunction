# 命名：add_macro
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/add_macro
$data modify entity @e[tag=EditedVillager,limit=1] Offers.Recipes insert $(Slot) value {xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b,maxUses: 2147483647}