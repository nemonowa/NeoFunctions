# 命名：.neo
# 説明：
# >/function neofunction:entity/skill/clock/1t-1
# =/function neofunction:entity/skill/aj/.neo

execute unless data entity @s item.components."minecraft:custom_data".aj.id if score @s aj.id matches -2147483648..2147483647 run function neofunction:entity/skill/aj/data
execute unless score @s aj.id matches -2147483648..2147483647 run function neofunction:entity/skill/aj/score
execute if score @s aj.id matches -2147483648..2147483647 at @s run function neofunction:entity/skill/aj/run