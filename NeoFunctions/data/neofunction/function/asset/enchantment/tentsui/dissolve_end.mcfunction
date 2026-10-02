# 命名：dissolve_end
# 説明：槍の霧散の最後。光の粒を一気に散らして、槍の表示を消す
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/dissolve_end


# 内容
execute as @e[type=item_display,tag=neo.nk_spear] if score @s neo.nk_id = #cur neo.nk_id run tag @s add neo.nk_this
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.6 400 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:flash{color:[1.0,0.8,0.5,1.0]} ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=item_display,tag=neo.nk_this,limit=1] run particle minecraft:white_ash ~ ~ ~ 3 10 3 0 300 force
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 12 0.6
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 12 0.5
kill @e[type=item_display,tag=neo.nk_this]
