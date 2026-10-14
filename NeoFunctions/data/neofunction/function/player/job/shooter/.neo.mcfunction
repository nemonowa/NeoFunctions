# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/shooter/.neo


# 職業個別のtick処理：媒体を持ってる判定
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}} if entity @s run return run function neofunction:player/job/shooter/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:bow"}} if entity @s run return run function neofunction:player/job/shooter/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:crossbow"}} if entity @s run return run function neofunction:player/job/shooter/weapon








