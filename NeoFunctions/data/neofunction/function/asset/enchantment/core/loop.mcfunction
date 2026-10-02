# 命名：loop
# 説明：神器のエンチャントの進行。爆心（マーカー）があるあいだだけ毎 tick 動く
# 実行条件：爆心がある
# >/function neofunction:asset/enchantment/tentsui/place
# =/function neofunction:asset/enchantment/core/loop


# 内容
execute as @e[type=marker,tag=neo.nuke] at @s run function neofunction:asset/enchantment/core/tick
execute if entity @e[type=marker,tag=neo.nuke] run schedule function neofunction:asset/enchantment/core/loop 1t replace
