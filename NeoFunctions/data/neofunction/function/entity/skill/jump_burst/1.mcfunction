# 命名：1
# 説明：（説明未記載）
# >/function neofunction:entity/skill/jump_burst/1_schedule
# =/function neofunction:entity/skill/jump_burst/1

tag @s add JumpBurstNow
data modify entity @s Motion set value [0d,-1.3d,0d]
execute on target at @s facing entity @e[tag=JumpBurstNow] feet facing ^ ^ ^-1 as @e[tag=JumpBurstNow] run function neofunction:entity/skill/motion/custom_speed_straight {Speed:1.3}
tag @s remove JumpBurstNow
tag @s remove JumpBurst1
tag @s add JumpBurst2
effect give @s slow_falling 4 0 true