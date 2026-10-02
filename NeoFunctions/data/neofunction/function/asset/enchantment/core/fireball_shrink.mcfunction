# 命名：fireball_shrink
# 説明：火球を 40 tick かけてしぼませる
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/core/fireball_shrink


# 内容
execute as @e[type=item_display,tag=neo.nk_ball] if score @s neo.nk_id = #nk_cur temp run data merge entity @s {start_interpolation:0,interpolation_duration:40,transformation:{scale:[0f,0f,0f]}}
