# 命名：暗殺士官の正装
# 説明：
# >
# =/function neofunction:system/adv/inventory_changed/254


# 内容
function neofunction:player/job/assasin/change
item replace entity @s armor.head with minecraft:air
playsound minecraft:entity.axolotl.idle_air master @s ~ ~ ~ 1 0.9 1


