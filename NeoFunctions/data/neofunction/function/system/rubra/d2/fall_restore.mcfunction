# 命名：fall_restore
# 説明：滝を元の太さに戻す（堰の凝灰岩を水に戻す）
# >/function neofunction:system/rubra/d2/reset
# =/function neofunction:system/rubra/d2/fall_restore

# 内容
execute as @e[type=marker,tag=rubra_fall_src] at @s if block ~ ~ ~ minecraft:tuff run setblock ~ ~ ~ minecraft:water
data remove storage neofunction:rubra d2.fall
