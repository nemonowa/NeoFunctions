# 命名：offhand
# 説明：リロードから抜ける処理
# >/function neofunction:system/adv/tick/fireweapon/.ammocheck/番号
# =/function neofunction:system/adv/tick/fireweapon/reload/offhand

execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components{"minecraft:custom_data":{reloadingtime:0}} run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloading set value 0b
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components{"minecraft:custom_data":{reloadingtime:0}} run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammo set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".maxammo

#名前を変更
kill @e[type=text_display,tag=temp_text]
#テキストディスプレイを召喚(おのれもやん)
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
summon text_display ~ ~ ~ {view_range:0f,Tags:["temp_text","del"],alignment:"center",text:{"translate":"%1$s%2$s" ,"with":[{"entity": "@e[tag=temp_display]","nbt": 'item.components."minecraft:custom_data".name',"interpret": true},{"translate":"<%1$s>","color":"dark_gray","bold":true,"italic":false,"with": [{"entity": "@e[tag=temp_display]","nbt": 'item.components."minecraft:custom_data".ammo'}]}]}}
#アイテムディスプレイのクロスボウに矢をチャージ
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_name" set from entity @e[tag=temp_text,limit=1,sort=nearest] text


#reloadingtimeが0の時、矢を装填
execute as @s[nbt={Inventory:[],equipment:{offhand:{id:"minecraft:crossbow"}}}] run function neofunction:system/adv/shot_crossbow/fireweapon/charge/.charge
execute as @s[nbt={Inventory:[],equipment:{offhand:{id:"minecraft:ender_eye"}}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".inoncooltime set value 0b

item replace entity @s weapon.offhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0


#reloadingtimeが0の時、効果音
playsound block.iron_door.close master @s ~ ~ ~ 1.0 2.0