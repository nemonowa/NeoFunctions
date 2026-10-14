# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/tamer/.neo


# パッシブ効果：6..12
# execute at @s if entity @e[tag=enemy,distance=..6] run title @s actionbar {"text":"[管理者通知],distance=..6","color":"red"}.
# execute at @s if entity @e[tag=enemy,distance=6..12] run title @s actionbar {"text":"[管理者通知],distance=6..12","color":"red"}
# execute at @s if entity @e[tag=enemy,distance=12..18] run title @s actionbar {"text":"[管理者通知],distance=12..18","color":"red"}

# スニーク時
# execute if entity @s[scores={sneak_time=1..}] run title @s actionbar {"text":"[管理者通知]scores={sneak_time=1..}","color":"red"}

# 説明：職業個別のtick処理
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}} if entity @s run return run function neofunction:player/job/tamer/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:bat_spawn_egg"}} if entity @s run return run function neofunction:player/job/tamer/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:fishing_rod"}} if entity @s run return run function neofunction:player/job/tamer/weapon





