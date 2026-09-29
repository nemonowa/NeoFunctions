# 命名：roll
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/roll


execute at @s run tp @s ~ ~ ~ ~20 ~

execute as @s[tag=marked] at @s positioned ~ ~1.3 ~ run particle enchanted_hit ^4 ^ ^ 0.1 0 0 0 1 normal