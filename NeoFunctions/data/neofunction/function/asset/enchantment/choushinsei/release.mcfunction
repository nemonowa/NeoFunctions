# 命名：release
# 説明：本人を放す。空中の印を消し、ゆっくり落ちるようにする
# 実行条件：発動した本人として
# >/function neofunction:asset/enchantment/choushinsei/tick
# =/function neofunction:asset/enchantment/choushinsei/release


# 内容
execute as @e[type=marker,tag=neo.nk_air] if score @s neo.nk_id = #cur neo.nk_id run kill @s
effect give @s minecraft:slow_falling 10 0 true
