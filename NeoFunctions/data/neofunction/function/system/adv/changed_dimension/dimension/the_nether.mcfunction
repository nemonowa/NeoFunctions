# 命名：the_nether
# 説明：minecraft:the_netherに転移したとき
# >/function neofunction:system/adv/changed_dimension/.neo
# =/function neofunction:system/adv/changed_dimension/dimension/the_nether


# 内容：ネザーランド
title @s title {"text":"ネザーランド","color":"dark_red","bold":true,"italic":false,"underlined":true}

title @s subtitle [{"text":"= ","color":"dark_gray","bold":false,"italic":false},{"text":"烈火","color":"dark_red","bold":false,"italic":false},{"text":"の灼","color":"dark_gray","bold":false,"italic":false},{"text":"熱","color":"red","bold":false,"italic":false},{"text":"地獄 =","color":"dark_gray","bold":false,"italic":false}]

playsound minecraft:entity.blaze.ambient record @s ~ ~ ~ 4 0.5 0

particle dust_color_transition{from_color:[1.000,0.000,0.000],to_color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 1 2 1 1 99 force @s

