# 命名：bedrock
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/bedrock



# 内容
data merge block ~ ~1 ~ {front_text:{color:"black",has_glowing_text:0b,messages:[{"bold":true,click_event:{"action":"run_command",command:"/fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:obsidian replace minecraft:bedrock"},"color":"light_purple","italic":false,"text":"۞スペルサイン۞","underlined":true},{"bold":false,click_event:{"action":"run_command",command:"/playsound minecraft:block.amethyst_block.break block @a[distance=..16] ~ ~ ~ 1.0 0.1"},"color":"blue","italic":false,"text":"「範囲粉砕」"},{"bold":false,click_event:{"action":"run_command",command:"/particle block crying_obsidian ~ ~ ~ 2 2 2 1 100 normal"},"color":"white","italic":false,"text":"封印解除"},{"bold":true,click_event:{"action":"run_command",command:"/fill ~ ~-1 ~ ~ ~ ~ air"},"color":"black","italic":false,"text":"Bedrock"}]},is_waxed:1b,allow_op_features:1b}


