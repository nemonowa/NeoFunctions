# 命名：harvestwart
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/harvestwart



# 内容
data merge block ~ ~1 ~ {front_text:{color:"black",has_glowing_text:0b,messages:[{"bold":true,click_event:{"action":"run_command",command:"/function neofunction:asset/sign/spellsign/harvestwart"},"color":"light_purple","italic":false,"text":"۞スペルサイン۞","underlined":true},{"bold":false,"color":"blue","italic":false,"text":"「範囲収穫」"},{"bold":false,"color":"white","italic":false,"text":"スペル発動"},{"bold":true,"color":"#800000","italic":false,"text":"Netherwart"}]},is_waxed:1b,allow_op_features:1b}
