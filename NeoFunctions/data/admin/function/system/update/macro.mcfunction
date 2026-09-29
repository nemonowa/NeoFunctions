# 命名：macro
# 説明：（説明未記載）
# >
# =/function admin:system/update/macro
$loot replace entity @e[tag=resolve,limit=1,sort=nearest,distance=..1] container.0 loot neofunction:item/$(CustomModelData)

data modify storage admin:update Item set from entity @e[tag=resolve,limit=1,sort=nearest,distance=..1] item