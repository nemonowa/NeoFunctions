# 命名：mainhand
# 説明：リロード状態を付与する処理
# >/function neofunction:system/adv/shot_crossbow/fireweapon/shot/mainhand
# =/function neofunction:system/adv/shot_crossbow/fireweapon/reload/mainhand

#maxreloadingtimeをreloadtimeに代入
playsound block.fire.extinguish master @s ~ ~ ~ 1 2
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloadingtime set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".maxreloadingtime
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloading set value 1b

item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0

#ディスプレイを削除
kill @e[type=item_display,tag=temp_display]
