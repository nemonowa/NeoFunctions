# 命名：stun_end
# 説明：気絶が明けた：セレンがまた浮き上がって守りを取り戻し、欠片が 4 つ生える
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/stun_tick
# =/function neofunction:entity/skill/boss/rubra_cradle/stun_end

# 内容
data modify storage neofunction:rubra cradle.stun set value 0
effect give @s minecraft:resistance infinite 4 true
data merge entity @s {NoGravity:1b}
execute as @e[type=marker,tag=rubra_arena_center,limit=1] at @s run tp @e[type=evoker,tag=rubra_eater,limit=1] ~ ~1 ~
execute as @e[type=marker,tag=rubra_cradle_rot,limit=1] at @s run function neofunction:entity/skill/boss/rubra_cradle/regrow
tellraw @a[distance=..40] {"text":"セレンの体から、また赤い欠片が生えてきた……。","color":"#FF8A7A","italic":true}
