# 命名：orange
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/orange



# 内容
data merge block ~ ~1 ~ {front_text:{color:"black",has_glowing_text:0b,messages:[{"bold":true,click_event:{"action":"run_command",command:"/fill ~-8 ~-1 ~-8 ~8 ~8 ~8 air replace minecraft:orange_stained_glass"},"color":"light_purple","italic":false,"text":"۞スペルサイン۞","underlined":true},{"bold":false,click_event:{"action":"run_command",command:"/playsound block.glass.break block @a[distance=..16] ~ ~ ~ 1.0 0.1 1.0"},"color":"blue","italic":false,"text":"「範囲粉砕」"},{"bold":false,click_event:{"action":"run_command",command:"/particle block orange_stained_glass ~ ~ ~ 8 8 8 1 1000 normal"},"color":"white","italic":false,"text":"封印解除"},{"bold":true,click_event:{"action":"run_command",command:"/fill ~ ~-1 ~ ~ ~ ~ air replace"},"color":"#EB9431","italic":false,"text":"orange_crystal"}]},is_waxed:1b,allow_op_features:1b}