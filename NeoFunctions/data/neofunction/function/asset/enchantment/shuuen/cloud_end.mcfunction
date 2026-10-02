# 命名：cloud_end
# 説明：キノコ雲の最後。粒を一気に散らして、雲の表示を消す
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/cloud_end


# 内容
particle minecraft:cloud ~ ~44 ~ 16 8 16 0.15 600 force
particle minecraft:cloud ~ ~20 ~ 5 16 5 0.1 200 force
particle minecraft:cloud ~ ~2 ~ 17 1 17 0.1 200 force
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 30 0.5
execute as @e[type=item_display,tag=neo.nk_cloud] if score @s neo.nk_id = #nk_cur temp run kill @s
