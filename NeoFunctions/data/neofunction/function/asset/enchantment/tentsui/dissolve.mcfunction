# 命名：dissolve
# 説明：槍の霧散中。槍のまわりから光の粒・火花・灰色に変わる粒を出し続ける
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/dissolve


# 内容
execute as @e[type=item_display,tag=neo.nk_spear] if score @s neo.nk_id = #cur neo.nk_id run tag @s add neo.nk_this
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:end_rod ~ ~ ~ 0.8 12 0.8 0.04 25 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:dust_color_transition{from_color:[1.0,0.5,0.0],to_color:[0.35,0.35,0.35],scale:2.0} ~ ~ ~ 1 12 1 0 30 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:electric_spark ~ ~ ~ 0.8 12 0.8 0.1 15 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:glow ~ ~ ~ 1 12 1 0 10 force
tag @e[tag=neo.nk_this] remove neo.nk_this
