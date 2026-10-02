# 命名：dissolve_start
# 説明：槍の霧散の開始。光を白に変える（大きさはそのまま。粒を出し続けたあと dissolve_end で一気に消す）
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/tentsui/dissolve_start


# 内容
execute as @e[type=item_display,tag=neo.nk_spear] if score @s neo.nk_id = #nk_cur temp run data merge entity @s {glow_color_override:16777215}
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 12 0.6
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 12 0.5
