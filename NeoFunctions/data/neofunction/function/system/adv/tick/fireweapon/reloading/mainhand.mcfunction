# 命名：mainhand
# 説明：リロード中の処理
# >adv
# =/function neofunction:system/adv/tick/fireweapon/reloading/mainhand

#メインハンドの処理だよ！！
summon item_display ~ ~ ~ {view_range:0f,Tags:["temp_display","del"]}

#プレイヤーのアイテムをアイテムディスプレイのコンテナに
item replace entity @e[tag=temp_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

#reloadingtimeを-1にする
execute store result entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloadingtime int 1 run data get entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloadingtime 0.99999999

#nameというカスタムタグを持っていない場合、displaynameをnameに代入
execute as @e[tag=temp_display,limit=1,sort=nearest] unless data entity @s item.components."minecraft:custom_data".name run data modify entity @s item.components."minecraft:custom_data".name set from entity @s item.components."minecraft:custom_name"
#名前をreloading<残り時間>に変える
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
summon text_display ~ ~ ~ {view_range:0f,Tags:["temp_text","del"],alignment:"center",text:{"translate":"Reloading... <%1$s>","color":"dark_gray","bold":true,"italic":false,"with": [{"entity": "@e[tag=temp_display,sort=nearest,limit=1]","nbt": 'item.components."minecraft:custom_data".reloadingtime'}]}}
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_name" set from entity @e[tag=temp_text,limit=1,sort=nearest] text

#reloadingtimeが0の時、インベントリに指定弾薬数以上持っているかチェック
#弾薬の種類設定
execute store result storage neofunction:fireweapon maxammo int 1 run data get entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".maxammo
data modify storage neofunction:fireweapon id set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.id
data modify storage neofunction:fireweapon tag set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.tag
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components{"minecraft:custom_data":{reloadingtime:0}} unless data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.tag run function neofunction:system/adv/tick/fireweapon/.ammocheck/vanilla with storage neofunction:fireweapon
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components{"minecraft:custom_data":{reloadingtime:0}} if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.tag run function neofunction:system/adv/tick/fireweapon/.ammocheck/cmd with storage neofunction:fireweapon

#プレイヤーにアイテムを戻す
item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0

kill @e[type=item_display,tag=temp_display]
kill @e[type=text_display,tag=temp_text]

