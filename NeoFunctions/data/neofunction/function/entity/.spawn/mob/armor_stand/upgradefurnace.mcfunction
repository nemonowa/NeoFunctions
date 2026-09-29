# 命名：upgradefurnace
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/upgradefurnace



# 内容
data merge block ~ ~1 ~ {front_text:{color:"black",has_glowing_text:0b,messages:[{"bold":true,click_event:{"action":"run_command",command:"/function neofunction:asset/sign/spellsign/upgradefurnace"},"color":"light_purple","italic":false,"text":"۞スペルサイン۞","underlined":true},{"bold":false,"color":"blue","italic":false,"text":"「機能強化」"},{"bold":false,"color":"white","italic":false,"text":"スペル発動"},{"bold":true,"color":"red","italic":false,"text":"Furnace"}]},is_waxed:1b,allow_op_features:1b}
clone ~ ~1 ~ ~ ~1 ~ ~ ~ ~ replace force
setblock ~ ~1 ~ air
