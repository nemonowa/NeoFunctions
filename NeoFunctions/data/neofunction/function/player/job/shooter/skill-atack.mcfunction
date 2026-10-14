# 命名：skill-atack
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/shooter/skill-atack


# 説明：職業個別のtick処理
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:bow"}} if entity @s run return run function neofunction:player/job/shooter/weapon
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:crossbow"}} if entity @s run return run function neofunction:player/job/shooter/weapon








