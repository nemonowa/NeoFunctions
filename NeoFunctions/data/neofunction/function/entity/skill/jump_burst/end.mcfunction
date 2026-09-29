# 命名：end
# 説明：（説明未記載）
# >/function neofunction:entity/skill/jump_burst/2_schedule
# =/function neofunction:entity/skill/jump_burst/end

particle sonic_boom
execute unless predicate neofunction:has_target run function neofunction:entity/skill/jump_burst/end
execute unless predicate neofunction:has_target run return 0
execute on target if entity @s[distance=..15] run function neofunction:entity/skill/jump_burst/end
execute on target if entity @s[distance=..15] run return 0
tag @s add JumpBurstNow
execute on target at @s facing entity @e[tag=JumpBurstNow] feet facing ^ ^ ^-1 as @e[tag=JumpBurstNow] run function neofunction:entity/skill/motion/custom_speed_straight {Speed:1.3}
tag @s remove JumpBurstNow