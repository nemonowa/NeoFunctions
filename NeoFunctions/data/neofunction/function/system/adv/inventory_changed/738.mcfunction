# 命名：包帯
# 説明：体力♡x16.5回復
# >
# =/function neofunction:system/adv/inventory_changed/738


# 内容
title @s subtitle [{"text":"✜ 回復中 ✜"}]
title @s title [{"text":""}]
effect give @s minecraft:regeneration 5 4
effect give @s minecraft:slowness 5 2
effect give @s mining_fatigue 5 9
playsound minecraft:entity.axolotl.idle_air master @s ~ ~ ~ 1 0.9 1
item replace entity @s armor.chest with minecraft:air


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/738