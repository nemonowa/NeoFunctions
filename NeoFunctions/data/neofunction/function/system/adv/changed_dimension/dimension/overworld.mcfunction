# 命名：overworld
# 説明：minecraft:overworldに転移したとき
# >/function neofunction:system/adv/changed_dimension/.neo
# =/function neofunction:system/adv/changed_dimension/dimension/overworld


# 内容：オーバーワールド
title @s title {"text":"オーバーワールド","color":"dark_green","bold":true,"italic":false,"underlined":true}

title @s subtitle [{"text":"= ","color":"dark_gray","bold":false,"italic":false},{"text":"無限","color":"dark_green","bold":false,"italic":false},{"text":"の創","color":"dark_gray","bold":false,"italic":false},{"text":"造","color":"green","bold":false,"italic":false},{"text":"世界 =","color":"dark_gray","bold":false,"italic":false}]

playsound minecraft:entity.firework_rocket.launch record @s ~ ~ ~ 4 0.5 1

particle dust_color_transition{from_color:[0.000,1.000,0.000],to_color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 1 2 1 1 99 force @s
