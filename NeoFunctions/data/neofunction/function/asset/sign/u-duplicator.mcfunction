# 命名：複製器
# 説明：装備させたアイテムの個数を2にするアマスタ
# 説明：実行者：@e[type=armor_stand,limit=1,sort=nearest,distance=..4,tag=duplicator]
# 説明：https://discord.com/channels/802086247291158538/860823332235640842/1445347645752344626
# 説明：execute if data entity @s HandItems[0].tag.rare run say rare
# >
# =/function neofunction:asset/sign/u-duplicator



# 増やす部位のデータを取る
# スロット保存 0:メインハンド 1:オフハンド 2:頭 3:胴 4:脚 5:足
data remove storage neofunction:duplicator item
scoreboard players set slot temp 0
data modify storage neofunction:duplicator item set from entity @s equipment.mainhand
execute unless data storage neofunction:duplicator item{count:1} run scoreboard players add slot temp 1
execute unless data storage neofunction:duplicator item{count:1} run data modify storage neofunction:duplicator item set from entity @s equipment.offhand
execute unless data storage neofunction:duplicator item{count:1} run scoreboard players add slot temp 1
execute unless data storage neofunction:duplicator item{count:1} run data modify storage neofunction:duplicator item set from entity @s equipment.feet
execute unless data storage neofunction:duplicator item{count:1} run scoreboard players add slot temp 1
execute unless data storage neofunction:duplicator item{count:1} run data modify storage neofunction:duplicator item set from entity @s equipment.legs
execute unless data storage neofunction:duplicator item{count:1} run scoreboard players add slot temp 1
execute unless data storage neofunction:duplicator item{count:1} run data modify storage neofunction:duplicator item set from entity @s equipment.chest
execute unless data storage neofunction:duplicator item{count:1} run scoreboard players add slot temp 1
execute unless data storage neofunction:duplicator item{count:1} run data modify storage neofunction:duplicator item set from entity @s equipment.head

# 増やすアイテムがなければ終わり
execute unless data storage neofunction:duplicator item{count:1} run return run data remove storage neofunction:duplicator item

# バンドルシュル箱は拒否
execute if data storage neofunction:duplicator item{id:"minecraft:shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:white_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:light_gray_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:gray_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:black_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:brown_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:red_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:orange_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:yellow_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:lime_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:green_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:cyan_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:light_blue_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:blue_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:purple_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:magenta_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:pink_shulker_box"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]
execute if data storage neofunction:duplicator item{id:"minecraft:bundle"} run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "＞シュルカーボックス、バンドルは複製できません"}]

# 代金チェック
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["1"]}} if score 1c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§lスターシャード第１等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["2"]}} if score 2c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§b§lスターシャード第２等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["3"]}} if score 3c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§3§lスターシャード第３等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["4"]}} if score 4c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§d§lスターシャード第４等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["5"]}} if score 5c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§5§lスターシャード第５等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["6"]}} if score 6c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§c§lスターシャード第６等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["7"]}} if score 7c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§4§lスターシャード第７等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["8"]}} if score 8c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§e§lスターシャード第８等星§f 64"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["9"]}} if score 9c temp matches ..63 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§6§lスターシャード第９等星§f 64"}]
execute unless data storage neofunction:duplicator item.components."minecraft:custom_data".rare if score @a[limit=1,sort=nearest] minedSpawner matches ..7 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§6§lスポナー破壊クレジット§f 8"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:"ST"}} if score @a[limit=1,sort=nearest] minedSpawner matches ..15 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§6§lスポナー破壊クレジット§f 16"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:"SE"}} if score @a[limit=1,sort=nearest] minedSpawner matches ..31 run return run tellraw @a[limit=1,sort=nearest] [{"selector": "@s"},{"text": "の稼働に必要なシャードが足らない："},{"text": "§6§lスポナー破壊クレジット§f 32"}]

#say @a[limit=1,sort=nearest]
# 代金回収
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["1"]}} run scoreboard players remove 1c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["2"]}} run scoreboard players remove 2c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["3"]}} run scoreboard players remove 3c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["4"]}} run scoreboard players remove 4c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["5"]}} run scoreboard players remove 5c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["6"]}} run scoreboard players remove 6c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["7"]}} run scoreboard players remove 7c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["8"]}} run scoreboard players remove 8c temp 64
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["9"]}} run scoreboard players remove 9c temp 64
execute unless data storage neofunction:duplicator item.components."minecraft:custom_data".rare run scoreboard players remove @a[limit=1,sort=nearest] temp 8
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:"ST"}} run scoreboard players remove @a[limit=1,sort=nearest] temp 16
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:"SE"}} run scoreboard players remove @a[limit=1,sort=nearest] temp 32

# 増やして戻す
data modify storage neofunction:duplicator item.count set value 2b
execute if score slot temp matches 0 run data modify entity @s equipment.mainhand set from storage neofunction:duplicator item
execute if score slot temp matches 1 run data modify entity @s equipment.offhand set from storage neofunction:duplicator item
execute if score slot temp matches 2 run data modify entity @s equipment.feet set from storage neofunction:duplicator item
execute if score slot temp matches 3 run data modify entity @s equipment.legs set from storage neofunction:duplicator item
execute if score slot temp matches 4 run data modify entity @s equipment.chest set from storage neofunction:duplicator item
execute if score slot temp matches 5 run data modify entity @s equipment.head set from storage neofunction:duplicator item

# 演出
playsound minecraft:block.beacon.activate record @a[limit=1,sort=nearest] ~ ~ ~ 2 1.5 1
execute as @s at @s run particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

# 通知
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["1"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§lスターシャード第１等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["2"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§b§lスターシャード第２等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["3"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§3§lスターシャード第３等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["4"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§d§lスターシャード第４等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["5"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§5§lスターシャード第５等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["6"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§c§lスターシャード第６等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["7"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§4§lスターシャード第７等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["8"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§e§lスターシャード第８等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:["9"]}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§6§lスターシャード第９等星§f：64消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:"ST"}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§6§lスポナー破壊クレジット§f：16消費して装備品を複製しました！"}]
execute if data storage neofunction:duplicator item.components{"minecraft:custom_data":{rare:"SE"}} run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§6§lスポナー破壊クレジット§f：32消費して装備品を複製しました！"}]
execute unless data storage neofunction:duplicator item.components."minecraft:custom_data".rare run tellraw @a[limit=1,sort=nearest] ["",{"selector":"@s"},{"text":"＞§6§lスポナー破壊クレジット§f：8消費して装備品を複製しました！"}]

# 片付け
data remove storage neofunction:duplicator item
scoreboard players reset slot temp

## デバッグ用：https://discord.com/channels/802086247291158538/860823332235640842/1445387147468083391
# tellraw @a {"entity":"@s","nbt":"{}"}
#/summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,Tags:["duplicator"],CustomName:'{"text":"۞-複製器-۞","color":"light_purple","bold":true,"italic":false}'}
#/setblock ~ ~ ~ minecraft:birch_sign{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1"},"color":"light_purple","italic":false,"text":"۞-複製器-۞","underlined":true}','{"clickEvent":{"action":"run_command","value":"/effect give @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=duplicator] glowing 1 0"},"color":"black","text":"装備させたアイテムの"}','{"clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=duplicator] run function neofunction:asset/sign/u-duplicator"},"color":"black","text":"二個に複製する"}','{"clickEvent":{"action":"run_command","value":"./setblock ~ ~ ~ minecraft:air replace"},"color":"gold","text":"クレジット：64c","underlined":true}']},is_waxed:1b}