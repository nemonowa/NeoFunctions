# 命名：.neo
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/jump_burst/.neo

execute unless entity @s[tag=!JumpBurst1,tag=!JumpBurst2] run return 0
tag @s add JumpBurst1
execute if data entity @s {NoGravity:1b} run tag @s add JumpBurstNoG
data modify entity @s NoGravity set value 1b
data modify entity @s Motion set value [0d,1d,0d]
schedule function neofunction:entity/skill/jump_burst/1_schedule 15t append

playsound entity.ender_dragon.flap record @a[distance=..16] ~ ~ ~ 1 1.2