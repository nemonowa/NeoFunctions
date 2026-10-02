# 命名：hold
# 説明：本人を爆心の位置に留め、体の中の星を本人の胸の高さに合わせる
# 実行条件：爆心として、その位置で（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/hold


# 内容
execute as @a if score @s neo.nk_id = #nk_cur temp run tp @s ~ ~ ~
execute as @e[type=item_display,tag=neo.nk_core] if score @s neo.nk_id = #nk_cur temp run tp @s ~ ~1 ~
