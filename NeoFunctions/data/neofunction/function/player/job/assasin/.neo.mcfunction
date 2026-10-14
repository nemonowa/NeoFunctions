# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/assasin/.neo


# 説明：職業個別のtick処理
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}} if entity @s run return run function neofunction:player/job/assasin/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{}} unless entity @s run return run function neofunction:player/job/assasin/weapon






