# 命名：orb_size
# 説明：黒い球の大きさを変える。s＝黒のコンクリートの大きさ（泣く黒曜石は 0.85 倍）、d＝かける tick
# 実行条件：爆心として、ストレージ neofunction:enchantment orb を引数に（#cur に番号）
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/orb_size


# 内容
$execute as @e[type=item_display,tag=neo.nk_orb] if score @s neo.nk_id = #cur neo.nk_id if items entity @s contents minecraft:black_concrete run data merge entity @s {start_interpolation:0,interpolation_duration:$(d),transformation:{scale:[$(s)f,$(s)f,$(s)f]}}
$execute as @e[type=item_display,tag=neo.nk_orb] if score @s neo.nk_id = #cur neo.nk_id if items entity @s contents minecraft:crying_obsidian run data merge entity @s {start_interpolation:0,interpolation_duration:$(d),transformation:{scale:[$(c)f,$(c)f,$(c)f]}}
