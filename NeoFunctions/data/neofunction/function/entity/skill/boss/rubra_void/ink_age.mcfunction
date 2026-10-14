# 命名：ink_age
# 説明：【追加：2026-10-09 ルブラ編】黒い水が古くなる（1 秒ごと）：6 秒たったもの（rubra_ink5）は乾いて消える。ほかは 1 つ古く
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/ink_tick
# =/function neofunction:entity/skill/boss/rubra_void/ink_age

# 内容
execute as @e[type=marker,tag=rubra_ink5] at @s if block ~ ~ ~ minecraft:black_carpet run setblock ~ ~ ~ minecraft:air
kill @e[type=marker,tag=rubra_ink5]
tag @e[type=marker,tag=rubra_ink4] add rubra_ink5
tag @e[type=marker,tag=rubra_ink4] remove rubra_ink4
tag @e[type=marker,tag=rubra_ink3] add rubra_ink4
tag @e[type=marker,tag=rubra_ink3] remove rubra_ink3
tag @e[type=marker,tag=rubra_ink2] add rubra_ink3
tag @e[type=marker,tag=rubra_ink2] remove rubra_ink2
tag @e[type=marker,tag=rubra_ink1] add rubra_ink2
tag @e[type=marker,tag=rubra_ink1] remove rubra_ink1
tag @e[type=marker,tag=rubra_ink0] add rubra_ink1
tag @e[type=marker,tag=rubra_ink0] remove rubra_ink0
