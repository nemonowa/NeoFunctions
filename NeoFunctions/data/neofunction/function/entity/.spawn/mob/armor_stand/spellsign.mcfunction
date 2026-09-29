# 命名：spellsign
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/spellsign

# 内容
execute store success score #Calc temp run setblock ~ ~ ~ minecraft:glass keep

# 向きに合わせて看板設置(back_textはスペルサイン破壊用)
execute as @s[nbt={Rotation: [0.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=0]
execute as @s[nbt={Rotation: [45.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=2]
execute as @s[nbt={Rotation: [90.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=4]
execute as @s[nbt={Rotation: [135.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=6]
execute as @s[nbt={Rotation: [180.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=8]
execute as @s[nbt={Rotation: [-180.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=8]
execute as @s[nbt={Rotation: [-135.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=10]
execute as @s[nbt={Rotation: [-90.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=12]
execute as @s[nbt={Rotation: [-45.0f, 0.0f]}] run setblock ~ ~1 ~ minecraft:mangrove_sign[rotation=14]

# 中身
execute if score #Calc temp matches 1 run data merge block ~ ~1 ~ {front_text:{has_glowing_text:0b,messages:[{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"underlined":true},{"text":"「基本下地」","color":"aqua","bold":true},[{"text":"永続型：","color":"blue"},{"keybind":"key.use"}],{"text":"۞ Spell-Sign ۞","color":"light_purple","bold":true,"underlined":true}]},back_text:{has_glowing_text:0b,messages:[{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"underlined":true,click_event:{"action":"run_command",command:"/fill ~ ~-1 ~ ~ ~ ~ air replace"}},{"text":"「魔板撤去」","color":"red","bold":true,click_event:{"action":"run_command",command:"/playsound minecraft:block.glass.break block @a[distance=..8] ~ ~ ~ 1 0.2 1"}},{"text":"注意：裏側です！","color":"white"},[{"text":"消費型：","color":"blue",click_event:{"action":"run_command",command:"/particle minecraft:enchant ~ ~ ~ 0 0 0 1 99 normal"}},{"keybind":"key.use"}]]},allow_op_features:1b}
execute if score #Calc temp matches 0 run data merge block ~ ~1 ~ {front_text:{has_glowing_text:0b,messages:[{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"underlined":true},{"text":"「基本下地」","color":"aqua","bold":true},[{"text":"永続型：","color":"blue"},{"keybind":"key.use"}],{"text":"۞ Spell-Sign ۞","color":"light_purple","bold":true,"underlined":true}]},back_text:{has_glowing_text:0b,messages:[{"text":"۞スペルサイン۞","color":"light_purple","bold":true,"underlined":true,click_event:{"action":"run_command",command:"/fill ~ ~ ~ ~ ~ ~ air replace"}},{"text":"「魔板撤去」","color":"red","bold":true,click_event:{"action":"run_command",command:"/playsound minecraft:block.glass.break block @a[distance=..8] ~ ~ ~ 1 0.2 1"}},{"text":"注意：裏側です！","color":"white"},[{"text":"消費型：","color":"blue",click_event:{"action":"run_command",command:"/particle minecraft:enchant ~ ~ ~ 0 0 0 1 99 normal"}},{"keybind":"key.use"}]]},allow_op_features:1b}
