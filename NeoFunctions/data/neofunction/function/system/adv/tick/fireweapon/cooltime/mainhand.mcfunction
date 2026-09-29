# 命名：mainhand
# 説明：銃の装填クールタイムの処理
# >/adv
# >/function neofunction:system/adv/shot_crossbow/fireweapon/shot/mainhand
# =/function neofunction:system/adv/tick/fireweapon/cooltime/mainhand

#進捗をはく奪
advancement revoke @s only neofunction:tick/fireweapon/cooltime/mainhand
#まずアイテムディスプレイをキル
kill @e[type=item_display,tag=temp_display]
#サモン
summon item_display ~ ~ ~ {view_range:0f,Tags:["temp_display","del"]}
#プレイヤーのメインハンドをコンテナにいれる
item replace entity @e[tag=temp_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

function neofunction:system/adv/tick/fireweapon/cooltime/.cooltime
#クロスボウの時、矢を装填する
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] if score #Calc1 temp >= @e[tag=temp_display,limit=1,sort=nearest] temp run function neofunction:system/adv/shot_crossbow/fireweapon/charge/.charge
#エンダーアイの時inoncooltimeを0bにする
execute as @s[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] if score #Calc1 temp >= @e[tag=temp_display,limit=1,sort=nearest] temp run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".inoncooltime set value 0b

item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0
