# 命名：cloud_grow
# 説明：キノコ雲を 80 tick かけて、地面から立ち上がりながら最終の形まで広げる
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/cloud_grow


# 内容
execute as @e[type=item_display,tag=neo.nk_cloud] if score @s neo.nk_id = #cur neo.nk_id run tag @s add neo.nk_this
execute as @e[type=item_display,tag=neo.nk_this] run data merge entity @s {start_interpolation:0,interpolation_duration:80}
execute as @e[type=item_display,tag=neo.nk_this] run data modify entity @s transformation set from entity @s item.components."minecraft:custom_data".to
tag @e[tag=neo.nk_this] remove neo.nk_this
