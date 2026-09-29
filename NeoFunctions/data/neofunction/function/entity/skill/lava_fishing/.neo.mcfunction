# 命名：.neo
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/lava_fishing/.neo

execute if entity @s[type=fishing_bobber] if block ~ ~ ~ lava unless predicate neofunction:upper run function neofunction:entity/skill/lava_fishing/bobber
execute if entity @s[type=area_effect_cloud] run function neofunction:entity/skill/lava_fishing/aec
