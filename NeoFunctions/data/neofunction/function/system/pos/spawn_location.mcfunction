# 命名：spawn_location
# 説明：
# 説明：初期地点（respawn）の記録を pos:spawn_point に入れ（id と名前も）、そこへ転移する
# 実行条件：imp
# >/function
# =/function neofunction:system/pos/spawn_location
# 内容
execute unless data entity @s respawn.pos run return run tellraw @s {"text":"転移失敗：初期地点の記録がない","color":"red","bold":true,"italic":false}
data modify storage pos:spawn_point id set value "spawn_point"
data modify storage pos:spawn_point name set value {"text":"初期地点","color":"dark_purple","bold":true,"italic":false}
data modify storage pos:spawn_point dimension set from entity @s respawn.dimension
data modify storage pos:spawn_point x set from entity @s respawn.pos[0]
data modify storage pos:spawn_point y set from entity @s respawn.pos[1]
data modify storage pos:spawn_point z set from entity @s respawn.pos[2]
execute as @s run function neofunction:system/pos/.macro with storage pos:spawn_point
