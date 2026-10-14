# 命名：.neo
# 説明：職業個別のtick処理
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/knight/.neo


# パッシブ効果：6..12
# execute at @s if entity @e[tag=enemy,distance=..6] run title @s actionbar {"text":"[管理者通知],distance=..6","color":"red"}.
# execute at @s if entity @e[tag=enemy,distance=6..12] run title @s actionbar {"text":"[管理者通知],distance=6..12","color":"red"}
# execute at @s if entity @e[tag=enemy,distance=12..18] run title @s actionbar {"text":"[管理者通知],distance=12..18","color":"red"}


# 媒体所持事項
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}} if entity @s run return run function neofunction:player/job/knight/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:wooden_sword"}} if entity @s run return run function neofunction:player/job/knight/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:stone_sword"}} if entity @s run return run function neofunction:player/job/knight/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:golden_sword"}} if entity @s run return run function neofunction:player/job/knight/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:iron_sword"}} if entity @s run return run function neofunction:player/job/knight/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:diamond_sword"}} if entity @s run return run function neofunction:player/job/knight/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:netherite_sword"}} if entity @s run function neofunction:player/job/knight/weapon


