# 命名：backstep
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/5s
# =/function neofunction:entity/skill/backstep

tag @s add rushing

execute on target at @s if entity @e[tag=rushing,distance=20..] run data modify storage neofunction:skill/rush Speed set value -1
execute on target at @s if entity @e[tag=rushing,distance=13..20] run data modify storage neofunction:skill/rush Speed set value -2
execute on target at @s if entity @e[tag=rushing,distance=8..13] run data modify storage neofunction:skill/rush Speed set value -3
execute on target at @s if entity @e[tag=rushing,distance=3..8] run data modify storage neofunction:skill/rush Speed set value -4
execute on target at @s if entity @e[tag=rushing,distance=..3] run data modify storage neofunction:skill/rush Speed set value -5
execute on target at @s facing entity @e[tag=rushing,limit=1] feet facing ^ ^ ^-1 rotated ~ -5 as @e[tag=rushing,limit=1] run function neofunction:entity/skill/motion/custom_speed_straight with storage neofunction:skill/rush

tag @s remove rushing