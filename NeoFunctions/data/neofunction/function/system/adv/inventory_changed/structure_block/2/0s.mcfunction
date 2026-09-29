# 命名：0s
# 説明：tutorial
# >/function neofunction:asset/event/tutorial
# =/function neofunction:system/adv/inventory_changed/structure_block/2/0s


# 内容
title @a[tag=go] subtitle [{"color":"#75F1FF","text":"V"},{"color":"#6AD7FF","text":"R"},{"color":"#60BDFF","text":"-"},{"color":"#55A2FF","text":"M"},{"color":"#4A88FF","text":"i"},{"color":"#3F6EFF","text":"s"},{"color":"#3554FF","text":"s"},{"color":"#2A39FF","text":"o"},{"color":"#1F1FFF","text":"n "},{"color":"#1F38FF","text":"L"},{"color":"#1E51FF","text":"E"},{"color":"#1E6AFF","text":"V"},{"color":"#1E84FF","text":"E"},{"color":"#1D9DFF","text":"L"},{"color":"#1DB6FF","text":"-"},{"color":"#1CE8FF","text":"δ","obfuscated":true}]

title @a[tag=go] title [{"text":"|||","color":"dark_aqua","bold":true,"obfuscated":true},{"text":" DIVE INTO PROGRAM ","color":"blue","obfuscated":false},{"text":"|||"}]

playsound minecraft:block.portal.travel record @a[tag=go] ~ ~ ~ 1 1 1

execute in neodimension:nexus run tp @a[tag=go] 1186.60 95.00 810.36 407.12 -14.06

tag @a remove go