# 命名：ball_prep
# 説明：火球が昇る準備。2.5 秒かけて動くように設定する（設定と移動を同じ tick にしないため先に行う）
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/ball_prep


# 内容
execute as @e[type=item_display,tag=neo.nk_ball] if score @s neo.nk_id = #cur neo.nk_id run data merge entity @s {teleport_duration:50}
