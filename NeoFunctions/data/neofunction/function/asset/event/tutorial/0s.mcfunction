# 命名：0s
# 説明：tutorial
# >/function neofunction:asset/event/tutorial
# =/function neofunction:asset/event/tutorial/0s


# 内容
title @a[tag=go] subtitle [{"color":"#61D5FF","text":"T"},{"color":"#69CAFF","text":"u"},{"color":"#71BEFF","text":"t"},{"color":"#7AB3FF","text":"o"},{"color":"#82A8FF","text":"r"},{"color":"#8A9CFF","text":"i"},{"color":"#9291FF","text":"a"},{"color":"#9A85FF","text":"l "},{"color":"#A37AFF","text":"– "},{"color":"#AB6FFF","text":"1"},{"color":"#AB6FFF","text":"s"},{"color":"#A37AFF","text":"t "},{"color":"#9A85FF","text":"M"},{"color":"#9291FF","text":"i"},{"color":"#8A9CFF","text":"s"},{"color":"#82A8FF","text":"s"},{"color":"#7AB3FF","text":"i"},{"color":"#71BEFF","text":"o"},{"color":"#61D5FF","text":"n"}]

title @a[tag=go] title [{"text":"|||","color":"dark_aqua","bold":true,"obfuscated":true},{"text":" DIVE INTO PROGRAM ","color":"blue","obfuscated":false},{"text":"|||"}]

playsound minecraft:block.portal.travel record @a[tag=go] ~ ~ ~ 1 1 1

execute in neodimension:nexus as @a[tag=go] run function neofunction:asset/event/tutorial/go/.neo

tag @a remove go