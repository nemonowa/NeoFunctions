# 命名：knight-hit
# 説明：/execute at @s positioned ~ ~1.2 ~ run function neofunction:asset/particle/test
# 説明：~を~に置換
# 説明：中心（斬撃の瞬間）
# >
# =/function neofunction:asset/particle/knight-hit
particle minecraft:sweep_attack ^ ^ ^1.8 0 0 0 0 1

# 左側（左→右へ流れる）
particle minecraft:crit ^-3.0 ^ ^0.8 0.3 0 0 0.05 6
particle minecraft:crit ^-2.5 ^ ^1.2 0.25 0 0 0.07 6
particle minecraft:crit ^-2.0 ^ ^1.6 0.2 0 0 0.09 6
particle minecraft:crit ^-1.5 ^ ^1.9 0.15 0 0 0.11 6
particle minecraft:crit ^-1.0 ^ ^2.1 0.1 0 0 0.13 6
particle minecraft:crit ^-0.5 ^ ^2.2 0.05 0 0 0.15 6

# 右側（同方向に流す＝斬り抜け表現）
particle minecraft:crit ^0.5 ^ ^2.2 0.05 0 0 0.15 6
particle minecraft:crit ^1.0 ^ ^2.1 0.1 0 0 0.13 6
particle minecraft:crit ^1.5 ^ ^1.9 0.15 0 0 0.11 6
particle minecraft:crit ^2.0 ^ ^1.6 0.2 0 0 0.09 6
particle minecraft:crit ^2.5 ^ ^1.2 0.25 0 0 0.07 6
particle minecraft:crit ^3.0 ^ ^0.8 0.3 0 0 0.05 6

# 残像（遅れて広がる）
particle minecraft:cloud ^-2 ^ ^1.5 0.2 0 0 0.02 3
particle minecraft:cloud ^0 ^ ^2.2 0.2 0 0 0.02 3
particle minecraft:cloud ^2 ^ ^1.5 0.2 0 0 0.02 3