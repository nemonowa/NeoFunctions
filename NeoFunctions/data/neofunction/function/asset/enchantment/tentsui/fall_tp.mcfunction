# 命名：fall_tp
# 説明：槍を、爆心の上 h ブロックへ移す（teleport_duration で 2 tick かけて滑らかに動く）
# 実行条件：爆心の位置で、ストレージ neofunction:enchantment fall を引数に（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/tentsui/fall
# =/function neofunction:asset/enchantment/tentsui/fall_tp


# 内容
$execute as @e[type=item_display,tag=neo.nk_spear] if score @s neo.nk_id = #nk_cur temp run tp @s ~ ~$(h) ~
