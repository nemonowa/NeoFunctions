# 命名：2_schedule
# 説明：（説明未記載）
# >/function neofunction:entity/skill/jump_burst/1_schedule
# =/function neofunction:entity/skill/jump_burst/2_schedule

execute as @e[tag=JumpBurst2] at @s if function neofunction:entity/skill/jump_burst/2_check run function neofunction:entity/skill/jump_burst/3
execute as @e[tag=JumpBurst2] at @s run function neofunction:entity/skill/jump_burst/2
execute if entity @e[tag=JumpBurst2] run schedule function neofunction:entity/skill/jump_burst/2_schedule 1t
