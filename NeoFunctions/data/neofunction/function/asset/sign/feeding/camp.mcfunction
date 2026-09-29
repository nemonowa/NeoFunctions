# 命名：camp
# 説明：エサ場システム看板（ビリーの野営地
# 説明：execute in neodimension:ceresta_festa run tp @s 853.25 43.00 1085.57 355.42 40.17
# 説明：https://discord.com/channels/1233036571243188296/1439571263113662606
# >
# =/function neofunction:asset/sign/feeding/camp


# 空の場合の条件分岐
execute unless entity @e[distance=..3,type=glow_item_frame,nbt={Item:{}}] run return run function neofunction:asset/sign/feeding/.neo

# 内容：名前を表示したかったが置き換え処理の時間待ちでできない
title @a[distance=..16] subtitle [{"text":"～feeding place～","color":"gold"}]
title @a[distance=..16] title [{"text":"野営地のえさ場","color":"gold"}]
playsound minecraft:item.goat_horn.sound.5 record @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 99 normal

# 対応するエンティティを召喚：
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:rotten_flesh"}}] run function neofunction:asset/summon/319
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:rotten_flesh"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:bone"}}] run function neofunction:asset/summon/320
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:bone"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}

execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"}}] run function neofunction:asset/summon/77
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:potion"}}] run function neofunction:asset/summon/353
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:potion"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:torch"}}] run function neofunction:asset/summon/347
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:torch"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:soul_torch"}}] run function neofunction:asset/summon/348
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:soul_torch"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:bread"}}] run function neofunction:asset/summon/349
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:bread"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:cookie"}}] run function neofunction:asset/summon/350
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:cookie"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:ender_pearl"}}] run function neofunction:asset/summon/232
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:ender_pearl"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}

# 魚系アイテム
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:cod"}}] run function neofunction:asset/summon/321
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:cod"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:salmon"}}] run function neofunction:asset/summon/322
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:salmon"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:tropical_fish"}}] run function neofunction:asset/summon/323
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:tropical_fish"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:pufferfish"}}] run function neofunction:asset/summon/605
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:pufferfish"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}


# 額縁の中身をドロップ
damage @e[type=glow_item_frame,distance=..3,limit=1] 1 minecraft:out_of_world


#/setblock ~ ~ ~ minecraft:warped_sign[rotation=8,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:0b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"function neofunction:asset/sign/feeding/camp"},"color":"red","text":"～狩猟場～"}','{"bold":true,"color":"aqua","text":"「野営地のエサ場」"}','{"bold":true,"color":"white","text":"襲撃レベル：lv10~","underlined":true}','{"color":"light_purple","text":"۞スペルサイン۞"}']},is_waxed:0b}

