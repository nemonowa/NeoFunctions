# 命名：白刃騎士の正装
# 説明：
# >
# =/function neofunction:system/adv/inventory_changed/249


# 内容
function neofunction:player/job/knight/change
item replace entity @s armor.head with minecraft:air
playsound minecraft:entity.axolotl.idle_air master @s ~ ~ ~ 1 0.9 1


