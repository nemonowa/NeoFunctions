# 命名：combo
# 説明：攻撃時にコンボする
# >/function neofunction:system/adv/player_hurt_entity/.all
# =/function neofunction:player/job/assasin/combo


# 媒体を所持していないならコンボしない
execute unless entity @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:0b}]}] run return 1

# ジョブによって多彩な攻撃を可能にしたい
playsound minecraft:entity.zombie.attack_iron_door record @s ~ ~ ~ 0.5 1.3 0.5

# コンボ（逆順にしないとコンボしないよ
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:109b}]}] glowing 5 109 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:108b}]}] glowing 5 109 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:107b}]}] glowing 5 108 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:106b}]}] glowing 5 107 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:105b}]}] glowing 5 106 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:104b}]}] glowing 5 105 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:103b}]}] glowing 5 104 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:102b}]}] glowing 5 103 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:101b}]}] glowing 5 102 false
effect give @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:100b}]}] glowing 5 101 false
effect give @s glowing 3 100 false

# 何コンボ？
title @s subtitle {"text":"                      ↠1combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:100b}]}] subtitle {"text":"                      ↠2combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:101b}]}] subtitle {"text":"                      ↠3combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:102b}]}] subtitle {"text":"                      ↠4combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:103b}]}] subtitle {"text":"                      ↠5combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:104b}]}] subtitle {"text":"                      ↠6combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:105b}]}] subtitle {"text":"                      ↠7combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:106b}]}] subtitle {"text":"                      ↠8combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:107b}]}] subtitle {"text":"                      ↠9combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:108b}]}] subtitle {"text":"                      ↠10combo","color":"red","bold":true,"italic":true}
title @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:109b}]}] subtitle {"text":"                      ↠10combo!!","color":"red","bold":true,"italic":true}
title @s title {"text":" "}

# 演出
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:100b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 5 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:101b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 10 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:102b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 20 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:103b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 30 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:104b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 40 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:105b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 50 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:106b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 60 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:107b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 70 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:108b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 80 force @a[distance=..64]
execute as @s[nbt={active_effects:[{id:"minecraft:glowing",amplifier:109b}]}] at @e[tag=enemy,limit=1,sort=nearest,distance=0.1..64,nbt={HurtTime:10s}] run particle item{item:"minecraft:nether_wart"} ~ ~1 ~ 0.2 0.3 0.2 0.25 90 force @a[distance=..64]

# 忍者専用処理
effect clear @s minecraft:invisibility
effect clear @s minecraft:strength
effect clear @s minecraft:resistance
scoreboard players set @s sneak_time 0



