# 命名：sun_grow
# 説明：太陽を 10 tick かけて膨らませる（大きさ 5・6・7）
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/shuuen/descend
# =/function neofunction:asset/enchantment/shuuen/sun_grow


# 内容
execute as @e[type=item_display,tag=neo.nk_sun] if score @s neo.nk_id = #nk_cur temp run tag @s add neo.nk_this
execute as @e[type=item_display,tag=neo.nk_this] if items entity @s contents minecraft:pearlescent_froglight run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[5f,5f,5f]}}
execute as @e[type=item_display,tag=neo.nk_this] if items entity @s contents minecraft:ochre_froglight run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[6f,6f,6f]}}
execute as @e[type=item_display,tag=neo.nk_this] if items entity @s contents minecraft:shroomlight run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{scale:[7f,7f,7f]}}
tag @e[tag=neo.nk_this] remove neo.nk_this
