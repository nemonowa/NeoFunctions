# 命名：1_schedule
# 説明：（説明未記載）
# >/function neofunction:entity/skill/jump_burst/.neo
# =/function neofunction:entity/skill/jump_burst/1_schedule

execute as @e[tag=JumpBurst1] at @s run function neofunction:entity/skill/jump_burst/1
schedule function neofunction:entity/skill/jump_burst/2_schedule 1t replace