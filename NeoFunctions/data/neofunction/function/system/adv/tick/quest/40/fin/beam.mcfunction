# 命名：beam
# 説明：矢の光の筋：前へ 1 マスずつ、赤・青・金の粒を置く（60 マスまで）
# 実行条件：実行位置 筋の今の所（向きは的へ）。#rf_n temp に進んだ数
# >/function neofunction:system/adv/tick/quest/40/fin/choice_final
# >/function neofunction:system/adv/tick/quest/40/fin/beam
# =/function neofunction:system/adv/tick/quest/40/fin/beam

# 内容
particle minecraft:dust{color:[1.0,0.3,0.3],scale:1.2} ~ ~ ~ 0.05 0.05 0.05 0 2 force @a[distance=..96]
particle minecraft:dust{color:[0.5,0.7,1.0],scale:1.0} ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..96]
particle minecraft:dust{color:[1.0,0.85,0.3],scale:1.0} ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..96]
scoreboard players add #rf_n temp 1
execute if score #rf_n temp matches ..60 unless entity @e[type=ghast,tag=rubra_void,distance=..3] positioned ^ ^ ^1 run function neofunction:system/adv/tick/quest/40/fin/beam
