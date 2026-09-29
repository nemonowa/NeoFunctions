# 命名：.cooltime
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/fireweapon/cooltime/mainhand
# >/function neofunction:system/adv/tick/fireweapon/cooltime/offhand
# =/function neofunction:system/adv/tick/fireweapon/cooltime/.cooltime

#calc1に現在のゲームタイムを入れる
execute store result score #Calc1 temp run time query gametime
#アイテムディスプレイにcooltimeを入れる
execute store result score @e[tag=temp_display,limit=1,sort=nearest] temp run data get entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".cooltime
#calc1>=アイテムディスプレイだったら装填
execute if score #Calc1 temp >= @e[tag=temp_display,limit=1,sort=nearest] temp run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".cooltime set value 0
execute if score #Calc1 temp >= @e[tag=temp_display,limit=1,sort=nearest] temp run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".inoncooltime set value 0b