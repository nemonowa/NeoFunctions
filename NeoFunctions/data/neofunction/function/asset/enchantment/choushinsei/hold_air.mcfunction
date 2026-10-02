# 命名：hold_air
# 説明：炸裂の直後。本人を空中（炸裂した位置）に留める
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/hold_air


# 内容
execute as @e[type=marker,tag=neo.nk_air] if score @s neo.nk_id = #cur neo.nk_id at @s as @a if score @s neo.nk_id = #cur neo.nk_id run tp @s ~ ~ ~
