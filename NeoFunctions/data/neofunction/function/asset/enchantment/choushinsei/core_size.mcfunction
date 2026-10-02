# 命名：core_size
# 説明：体の中の星の大きさを変える。s＝大きさ、d＝かける tick
# 実行条件：爆心として、引数 s・d（#cur に番号）
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/core_size


# 内容
$execute as @e[type=item_display,tag=neo.nk_core] if score @s neo.nk_id = #cur neo.nk_id run data merge entity @s {start_interpolation:0,interpolation_duration:$(d),transformation:{scale:[$(s)f,$(s)f,$(s)f]}}
