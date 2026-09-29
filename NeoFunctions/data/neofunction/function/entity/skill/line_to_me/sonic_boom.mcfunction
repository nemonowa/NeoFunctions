# 命名：sonic_boom
# 説明：（説明未記載）
# >汎用
# =/function neofunction:entity/skill/line_to_me/sonic_boom

particle sonic_boom ~ ~ ~ 0 0 0 0 1
execute facing entity @s feet positioned ^ ^ ^0.2 if entity @s[distance=1..128] run function neofunction:entity/skill/line_to_me/sonic_boom