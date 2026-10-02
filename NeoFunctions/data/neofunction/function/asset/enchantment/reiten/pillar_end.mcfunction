# 命名：pillar_end
# 説明：光の柱の最後。光の粒を一気に散らして、柱の表示を消す
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/pillar_end


# 内容
particle minecraft:end_rod ~ ~70 ~ 1 70 1 0.4 800 force
particle minecraft:flash{color:[0.8,0.8,1.0,1.0]} ~ ~10 ~ 0 0 0 0 1 force
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 20 0.5
execute as @e[type=item_display,tag=neo.nk_pillar] if score @s neo.nk_id = #nk_cur temp run kill @s
