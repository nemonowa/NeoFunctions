# 命名：world
# 説明：リソースパックの正常性を確認したりする看板
# >チュートリアルの看板https://github.com/nemonowa/twow/releases/
# =/function neofunction:asset/sign/world



# 内容
playsound minecraft:entity.chicken.death record @s ~ ~ ~ 10 1 1

# 上書き
#title @s actionbar {"text":"失敗：ResourcePackが動作していません！","color":"red","bold":true}
title @s actionbar {"text":"成功：ResourcePackは正常に動作しています！","color":"green","bold":true}

# URL
tellraw @s {"text":"⌖ このリンク先で最新のリソースパックを確認できます！","color":"blue","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"Click to Check & Download latest version!"}]},click_event:{"action":"open_url",url:"https://discord.com/channels/1233036571243188296/1383637859772272650/1383637859772272650"}}


#/setblock ~ ~ ~ birch_wall_sign[facing=east,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"bold":true,"color":"black","italic":false,"text":"⌖ World ⌖"}','{"bold":true,"color":"green","obfuscated":false,"text":"The World of Wonders"}','{"bold":true,"color":"#063931","italic":false,"text":"β-Version 0.0.2"}','{"bold":true,"color":"#063931","italic":false,"text":"for MC1.20.4"}']},is_waxed:0b}