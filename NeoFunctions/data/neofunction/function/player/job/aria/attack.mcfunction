# 命名：attack
# 説明：（説明未記載）
# >/function neofunction:player/job/aria/combo
# =/function neofunction:player/job/aria/attack

execute on attacker unless entity @s[tag=Attacker] run return 0
effect give @s minecraft:wither 5 0 true
effect give @s minecraft:glowing 30 118 true
