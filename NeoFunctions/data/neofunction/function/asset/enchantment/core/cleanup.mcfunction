# 命名：cleanup
# 説明：後片付け。この爆心の表示を消し、衝撃波の印を外し、使用中の印を消して、爆心を消す
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/tentsui/tick
# =/function neofunction:asset/enchantment/core/cleanup


# 内容
execute as @e[tag=neo.nk_fx] if score @s neo.nk_id = #cur neo.nk_id at @s run particle minecraft:large_smoke ~ ~5 ~ 1 5 1 0.02 40 force
execute as @e[tag=neo.nk_fx] if score @s neo.nk_id = #cur neo.nk_id run kill @s
tag @e[tag=neo.nk_hit] remove neo.nk_hit
execute as @a if score @s neo.nk_id = #cur neo.nk_id if score @s neo.nk_busy matches 1.. run scoreboard players reset @s neo.nk_busy
execute as @e[type=marker,tag=neo.nk_air] if score @s neo.nk_id = #cur neo.nk_id run kill @s
kill @s
