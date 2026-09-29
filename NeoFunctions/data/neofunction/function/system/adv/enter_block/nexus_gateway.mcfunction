# 命名：nexus_gateway
# 説明：NEXUSテレポート共通処理
# 説明：バイオーム：ポイント・ネモでend_gatewayに入ったとき
# 説明：tick
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/enter_block/nexus_gateway



## 内容
execute as @s[x=1272,y=127,z=1406,dx=3,dy=3,dz=3] run tag @s add enrealizer

execute as @s[x=1272,y=127,z=1406,dx=3,dy=3,dz=3] run return run function neofunction:system/adv/biome/pointnemo/end_gateway

execute as @s[x=1272,y=127,z=1406,dx=3,dy=3,dz=3] run give @s minecraft:written_book[minecraft:custom_model_data={floats:[1000.0f]},minecraft:written_book_content={pages:[[{"text":"","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"|||click|||","color":"aqua","obfuscated":true}]}},{"text":"あかるく...\n\nひろい..\n\n"},{"text":"||","color":"aqua","bold":true,"obfuscated":true},{"text":"||","color":"dark_blue","bold":true,"obfuscated":true},{"text":" 異","color":"blue","bold":true},{"text":" 空 ","color":"dark_blue","bold":true},{"text":"間 ","color":"aqua","bold":true},{"text":"||","color":"dark_blue","bold":true,"obfuscated":true},{"text":"||","color":"blue","bold":true,"obfuscated":true},{"text":"\n\n\n光り輝く",hover_event:{"action":"show_text","value":[{"text":"","obfuscated":false}]}},{"text":"未知の装置","color":"gold","bold":true},{"text":"が",hover_event:{"action":"show_text","value":[{"text":"","obfuscated":true}]}},{"text":"冷たい眠り","color":"dark_aqua","bold":true},{"text":"から呼び醒す..."}],[{"text":"","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"|||","color":"dark_aqua","obfuscated":true},{"text":"click","obfuscated":false},{"text":"|||"}]}},{"text":"もしも君がここがどこかなんか憶えていなくとも。ここが"},{"text":"「現実」","color":"red","bold":true},{"text":"であるという確信がそこにあった。\n\nどうやら"},{"text":"～波長～","color":"green","bold":true},{"text":"が合ったようだ。\n\n頭の中に"},{"text":"|||","color":"dark_aqua","bold":true,"obfuscated":true},{"text":"ノイズ","color":"aqua","bold":true},{"text":"|||","color":"dark_aqua","bold":true,"obfuscated":true},{"text":"が走る… "}]],title:"記憶",author:"MCID",resolved:1b},minecraft:custom_data={check:1,rare:["st"]}] 1


# ミス処理
playsound minecraft:entity.villager.no record @s ~ ~ ~ 1 1 1

title @s subtitle {"text":"=  Error : READBOOK  =","color":"red","italic":true,"underlined":true,"obfuscated":false}

title @s title [{"text":"|||","color":"dark_red","italic":true,"obfuscated":true},{"text":" Access the ","color":"red","obfuscated":false},{"text":"∞","obfuscated":false},{"text":" Gate ","color":"red","obfuscated":false},{"text":"|||"}]

execute in minecraft:the_end run tp @s 1277.55 128.13 1309.95 -359.67 59.31