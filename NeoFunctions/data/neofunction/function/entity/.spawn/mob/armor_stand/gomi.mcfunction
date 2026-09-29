# 命名：gomi
# 説明：スペルサイン処理
# 説明：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,distance=..4] run function neofunction:entity/.spawn/mob/armor_stand/spellsign
# >/function neofunction:entity/.spawn/mob/armor_stand/.neo
# =/function neofunction:entity/.spawn/mob/armor_stand/gomi



# 内容
data merge block ~ ~1 ~ {front_text:{color:"black",has_glowing_text:0b,messages:[{"text":"❁スペルサイン❁","color":"light_purple","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"「ミ＝ゴの箱」","color":"blue","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,click_event:{"action":"run_command",command:"/summon falling_block ~ ~3 ~ {BlockState:{id:\"minecraft:command_block\",properties:{facing:\"up\"}},TileEntityData:{Command:\"/data merge block ~ ~1 ~ {CustomName:'{\\\"text\\\":\\\"ｺﾚ(*´ω｀*)ﾊﾔﾚ\\\"}',Items:[]}\",CustomName:'{\"text\":\"ミ＝ゴの箱\"}'},Time:1,DropItem:0b,Motion:[0.0,0.1,0.0],Passengers:[{id:\"minecraft:falling_block\",BlockState:{id:\"minecraft:trapped_chest\"},Time:1,DropItem:0b}]}"}},{"text":"無限ゴミ箱","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,click_event:{"action":"run_command",command:"/summon firework_rocket ~ ~4 ~ {Life:10,FireworksItem:{id:\"firework_rocket\",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;4259801,3385343],FadeColors:[I;5729791,10246655]}]}}}}"}},{"text":"/setblock","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,click_event:{"action":"run_command",command:"/fill ~ ~-1 ~ ~ ~ ~ air replace"}}]},is_waxed:0b,allow_op_features:1b}
