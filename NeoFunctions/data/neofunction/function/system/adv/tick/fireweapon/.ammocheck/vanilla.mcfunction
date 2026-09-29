# 命名：vanilla
# 説明：弾薬の数をチェックしてclear
# 説明：弾薬が指定数以上あったとき
# >/function neofunction:system/adv/tick/fireweapon/reloading/mainhand
# >/function neofunction:system/adv/tick/fireweapon/reloading/mainhand
# =/function neofunction:system/adv/tick/fireweapon/.ammocheck/vanilla
$execute store result score @s temp run clear @s $(id) 0
$execute if score @s temp matches $(maxammo).. run clear @s $(id) $(maxammo)
$execute if score @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{reloading:1b,fireweapon:1b}}}}] temp matches $(maxammo).. run return run function neofunction:system/adv/tick/fireweapon/reload/mainhand
$execute if score @s[nbt={Inventory:[],equipment:{offhand:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{reloading:1b,fireweapon:1b}}}}}] temp matches $(maxammo).. run return run function neofunction:system/adv/tick/fireweapon/reload/offhand

#矢が指定数以上ないとき
kill @e[type=text_display,tag=temp_text]
summon text_display ~ ~ ~ {view_range:0f,Tags:["temp_text","del"],alignment:"center",text:{"translate":"Out of Ammo!!","color":"dark_red","bold":true,"italic":false}}
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_name" set from entity @e[tag=temp_text,limit=1,sort=nearest] text





