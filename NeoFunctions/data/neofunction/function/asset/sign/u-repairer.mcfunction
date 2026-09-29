# 命名：修復器
# 説明：装備させたアイテムの耐久値を全回復する
# 説明：実行者：@e[type=armor_stand,limit=1,sort=nearest,distance=..4,tag=repairer]
# 説明：https://discord.com/channels/802086247291158538/860823332235640842/1445347645752344626
# >
# =/function neofunction:asset/sign/u-repairer


# 代金
execute if score @p minedSpawner matches ..8 run return run tellraw @p [{"selector":"@e[limit=1,sort=nearest,type=armor_stand]"},{"text":"の稼働に必要なクレジットが足らない：","color":"white"},{"score":{"name":"@s","objective":"minedSpawner"},"color":"gold","bold":true}]

# 修理不可
execute if entity @s[nbt={equipment:{mainhand:{components:{"minecraft:repair_cost":2147483647}}}}] run return run tellraw @s {"text":"このアイテムは修理できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"不変の呪い"}]}}
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:repair_cost":2147483647}}}}] run return run tellraw @s {"text":"このアイテムは修理できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"不変の呪い"}]}}
execute if entity @s[nbt={equipment:{feet:{components:{"minecraft:repair_cost":2147483647}}}}] run return run tellraw @s {"text":"このアイテムは修理できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"不変の呪い"}]}}
execute if entity @s[nbt={equipment:{legs:{components:{"minecraft:repair_cost":2147483647}}}}] run return run tellraw @s {"text":"このアイテムは修理できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"不変の呪い"}]}}
execute if entity @s[nbt={equipment:{chest:{components:{"minecraft:repair_cost":2147483647}}}}] run return run tellraw @s {"text":"このアイテムは修理できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"不変の呪い"}]}}
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:repair_cost":2147483647}}}}] run return run tellraw @s {"text":"このアイテムは修理できない！","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"不変の呪い"}]}}

# 部位数に応じた修繕コスト計算（0 1 2 3 足　脚　胸　頭
scoreboard players set 修復機コスト temp 0

execute if data entity @s equipment.mainhand.id run scoreboard players add 修復機コスト temp 8
execute if data entity @s equipment.offhand.id run scoreboard players add 修復機コスト temp 8
execute if data entity @s equipment.feet.id run scoreboard players add 修復機コスト temp 8
execute if data entity @s equipment.legs.id run scoreboard players add 修復機コスト temp 8
execute if data entity @s equipment.chest.id run scoreboard players add 修復機コスト temp 8
execute if data entity @s equipment.head.id run scoreboard players add 修復機コスト temp 8

scoreboard players operation @p minedSpawner -= 修復機コスト temp

# 耐久値回復
# 【変更：2026-09-27 26.3対応】HandItems[]/ArmorItems[] は部位ごとの equipment に変わったため部位ごとに耐久値を戻す（damage を持つ＝傷んでいる装備のみ）
execute if data entity @s equipment.mainhand.components."minecraft:damage" run data modify entity @s equipment.mainhand.components."minecraft:damage" set value 0
execute if data entity @s equipment.offhand.components."minecraft:damage" run data modify entity @s equipment.offhand.components."minecraft:damage" set value 0
execute if data entity @s equipment.feet.components."minecraft:damage" run data modify entity @s equipment.feet.components."minecraft:damage" set value 0
execute if data entity @s equipment.legs.components."minecraft:damage" run data modify entity @s equipment.legs.components."minecraft:damage" set value 0
execute if data entity @s equipment.chest.components."minecraft:damage" run data modify entity @s equipment.chest.components."minecraft:damage" set value 0
execute if data entity @s equipment.head.components."minecraft:damage" run data modify entity @s equipment.head.components."minecraft:damage" set value 0
# 旧：item modify entity @s weapon.mainhand neofunction:set_damage/1


# 演出
playsound minecraft:block.beacon.activate record @a[distance=..8] ~ ~ ~ 2 1.5 1
execute as @s at @s run particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90

# 通知
tellraw @a[distance=..8] ["",{"selector":"@s"},{"text":"＞クレジット："},{"score":{"name":"修復機コスト","objective":"temp"},"color":"gold","bold":true},{"text":"消費して装備品の耐久値を全回復しました！"}]


# デバッグ用：https://discord.com/channels/802086247291158538/860823332235640842/1445387147468083391
# tellraw @a {"entity":"@s","nbt":"{}"}
#/summon armor_stand ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,ShowArms:1b,Tags:["repairer"],CustomName:'{"text":"۞-修復器-۞","color":"light_purple","bold":true,"italic":false}'}
#/setblock ~ ~ ~ minecraft:birch_sign[rotation=8,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.arrow.hit_player record @a[distance=..16] ~ ~ ~ 1 2 1"},"color":"light_purple","italic":false,"text":"۞-修復器-۞","underlined":true}','{"clickEvent":{"action":"run_command","value":"/effect give @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=repairer] glowing 1 0"},"color":"black","text":"装備させたアイテムの"}','{"clickEvent":{"action":"run_command","value":"execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..3,tag=repairer] run function neofunction:asset/sign/u-repairer"},"color":"black","text":"耐久値を完全回復"}','{"clickEvent":{"action":"run_command","value":"./setblock ~ ~ ~ minecraft:air replace"},"color":"gold","text":"コスト：8×部位数(credit)","underlined":true}']},is_waxed:1b}

