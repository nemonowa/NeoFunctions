# 命名：drag_start
# 説明：光の鎖：8 本の柱から光の鎖が伸び、星を舞台へ引きずり下ろし始める（drag を 388 から数え下ろす）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/form2
# =/function neofunction:entity/skill/boss/rubra_void/drag_start

# 内容
data modify storage neofunction:rubra fin merge value {drag:388,vul:1b}
effect clear @s minecraft:resistance
effect give @s minecraft:resistance infinite 2 true
playsound minecraft:block.chain.place hostile @a[distance=..128] ~ ~ ~ 4 0.5
playsound minecraft:block.beacon.power_select hostile @a[distance=..128] ~ ~ ~ 3 0.8
title @a[distance=..128] actionbar {"text":"光の鎖が星を捕らえた――舞台へ引きずり下ろす！","color":"#7FD8FF","bold":true}
