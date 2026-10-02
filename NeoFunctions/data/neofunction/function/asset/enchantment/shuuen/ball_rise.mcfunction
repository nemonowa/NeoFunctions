# 命名：ball_rise
# 説明：火球をキノコ雲の傘の位置（爆心の上 40）へ昇らせ
# 実行条件：爆心として（#cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/ball_rise


# 内容
execute as @e[type=item_display,tag=neo.nk_ball] if score @s neo.nk_id = #cur neo.nk_id run tp @s ~ ~40 ~
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 30 0.3
