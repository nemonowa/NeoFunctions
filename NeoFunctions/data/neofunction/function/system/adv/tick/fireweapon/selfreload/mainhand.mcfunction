# 命名：mainhand
# 説明：セルフリロード処理
# >/function neofunction:system/adv/tick/fireweapon/sneaking
# =/function neofunction:system/adv/tick/fireweapon/selfreload/mainhand

## 内容
scoreboard players set @s[scores={sneak_time=10..}] sneak_time 0

summon item_display ~ ~ ~ {view_range:0f,Tags:["temp_display","del"]}

#プレイヤーのメインハンドからアイテムディスプレイのコンテナに
item replace entity @e[tag=temp_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

#クロスボウの矢を空に
execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:charged_projectiles" set value []
# 【変更：2026-09-27 26.3対応】Charged フラグは廃止され、charged_projectiles の中身の有無で自動判定されるため無効化（上の行で空にしている）
# execute as @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.tag.Charged set value 0b
#maxreloadingtimeをreloadtimeに代入
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloadingtime set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".maxreloadingtime
#リロード中にする
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".reloading set value 1b

#マガジン内の玉を返す
execute store result storage neofunction:fireweapon ammo int 1 run data get entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammo
data modify storage neofunction:fireweapon id set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.id
data modify storage neofunction:fireweapon CustomModelData set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.tag.CustomModelData
execute unless data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.tag.CustomModelData run function neofunction:system/adv/tick/fireweapon/.return/summon with storage neofunction:fireweapon
execute if data entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammotype.tag.CustomModelData run function neofunction:system/adv/tick/fireweapon/.return/loot with storage neofunction:fireweapon

#アイテムを戻す
item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0

#ディスプレイを削除
kill @e[type=item_display,tag=temp_display]
