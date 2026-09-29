# 命名：10s
# 説明：ディメンション：nexusに入ったとき
# 説明：ディメンション侵入するための処理(60s)
# >
# =/function neofunction:system/adv/location/nexus/10s


# 内容
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:bad_omen 10 0 true
effect give @s minecraft:night_vision 30 0 true
effect give @s[tag=!nexusGravity] minecraft:jump_boost 10 3 true
effect give @s[tag=!nexusGravity] minecraft:slow_falling 10 0 true
