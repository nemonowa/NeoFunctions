# 命名：selen_walk
# 説明：【追加：2026-10-08 ルブラ編】セレンが西の横穴（781, -40, 3268）へ歩いていく（毎 tick 0.2）。着いたら消えて、横穴が崩れる
# 実行条件：schedule（実行者なし）
# >/function neofunction:system/adv/tick/quest/40/d1/selen
# =/function neofunction:system/adv/tick/quest/40/d1/selen_walk

# 内容
execute unless entity @e[type=mannequin,tag=rubra_selen] run return 0
execute as @e[type=mannequin,tag=rubra_selen] at @s facing 779.5 -39 3268.5 run tp @s ^ ^ ^0.2 90 0
execute as @e[type=mannequin,tag=rubra_selen] at @s unless entity @s[x=763,dx=21,y=-64,dy=128,z=3200,dz=140] run return run schedule function neofunction:system/adv/tick/quest/40/d1/selen_walk 1t replace
# 横穴に入った：消えて、崩れる
execute as @e[type=mannequin,tag=rubra_selen] at @s run particle minecraft:smoke ~ ~1 ~ 0.3 0.6 0.3 0.02 20 normal
kill @e[type=mannequin,tag=rubra_selen]
execute in neodimension:ceresta_festa run fill 771 -40 3268 783 -39 3268 minecraft:gravel replace minecraft:air
execute in neodimension:ceresta_festa run playsound minecraft:block.gravel.break block @a[distance=..64] 783 -39 3268 2 0.5
execute in neodimension:ceresta_festa run particle minecraft:block{block_state:"minecraft:gravel"} 783 -39 3268 1 1 1 0 80 normal
