# 命名：fireball_grow
# 説明：火球を 6 tick かけて膨らませる（大きさは 22・26・30）
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/core/fireball_grow


# 内容
execute as @e[type=item_display,tag=neo.nk_ball] if score @s neo.nk_id = #nk_cur temp run tag @s add neo.nk_this
execute as @e[type=item_display,tag=neo.nk_this] if items entity @s contents minecraft:pearlescent_froglight run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{scale:[22f,22f,22f]}}
execute as @e[type=item_display,tag=neo.nk_this] if items entity @s contents minecraft:ochre_froglight run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{scale:[26f,26f,26f]}}
execute as @e[type=item_display,tag=neo.nk_this] if items entity @s contents minecraft:shroomlight run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{scale:[30f,30f,30f]}}
tag @e[tag=neo.nk_this] remove neo.nk_this
