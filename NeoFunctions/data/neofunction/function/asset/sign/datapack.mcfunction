# 命名：datapack
# 説明：データパックの正常性を確認したりする看板
# >チュートリアルの看板
# =/function neofunction:asset/sign/datapack



# 内容
playsound minecraft:entity.chicken.death record @s ~ ~ ~ 10 1 1

# 上書き
#title @s actionbar {"text":"失敗：Datapackが動作していません！","color":"red","bold":true}
title @s actionbar {"text":"成功：Datapackは正常に動作しています！","color":"green","bold":true}

# URL
tellraw @s {"text":"⌖ このリンク先で最新のデータパックを確認できます！","color":"blue","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"Click to Check & Download latest version!"}]},click_event:{"action":"open_url",url:"https://discord.com/channels/1233036571243188296/1383639272233631804/1383639272233631804"}}


#/setblock ~ ~ ~ birch_wall_sign[facing=east,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"⌖ DataPack ⌖","color":"#063931","bold":true,"italic":false,"clickEvent":{"action":"run_command","value":"title @s actionbar {\\"text\\":\\"失敗：Datapackが動作していません！\\",\\"color\\":\\"red\\",\\"bold\\":true}"}}','[{"bold":true,"color":"#063931","obfuscated":true,"text":"|||"},{"text":" NeoFunctions ","color":"#00FFAA","underlined":true,"obfuscated":false},{"text":"|||","color":"#063931"}]','{"text":"β-Version 0.0.2","color":"black","bold":true,"italic":false}','{"text":"for MC1.20.4","color":"black","bold":true,"italic":false,"clickEvent":{"action":"run_command","value":"/function neofunction:asset/sign/datapack"}}']},is_waxed:1b} replace