# 命名：last_death_location
# 説明：ワールドセッティング
# 説明：記録を pos:last_death に移し、id と名前も入れる（「前回の地点」からも戻れる）
# 実行条件：imp
# >/function neofunction:system/trigger/code/96
# =/function neofunction:system/pos/last_death_location


# 内容
execute unless data entity @s LastDeathLocation run return run tellraw @s {"text":"転移失敗：消失地点の記録がない","color":"red","bold":true,"italic":false}
data modify storage pos:last_death id set value "last_death"
data modify storage pos:last_death name set value {"text":"ロストポイント","color":"dark_purple","bold":true,"italic":false}
data modify storage pos:last_death dimension set from entity @s LastDeathLocation.dimension
data modify storage pos:last_death x set from entity @s LastDeathLocation.pos[0]
data modify storage pos:last_death y set from entity @s LastDeathLocation.pos[1]
data modify storage pos:last_death z set from entity @s LastDeathLocation.pos[2]

execute as @s run function neofunction:system/pos/.macro with storage pos:last_death
