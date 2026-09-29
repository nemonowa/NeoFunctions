# 命名：the_end
# 説明：minecraft:the_endに転移したとき
# >/function neofunction:system/adv/changed_dimension/.neo
# =/function neofunction:system/adv/changed_dimension/dimension/the_end


# 内容：じえんど
title @s title {"text":"ジ・エンド","color":"dark_blue","bold":true,"italic":false,"underlined":true}

title @s subtitle [{"text":"= ","color":"dark_gray"},{"text":"深淵","color":"dark_blue","bold":false,"italic":false},{"text":"の終焉","color":"dark_gray","bold":false,"italic":false},{"text":"星","color":"dark_purple","bold":false,"italic":false},{"text":"域 =","color":"dark_gray","bold":false,"italic":false}]

playsound minecraft:entity.ender_dragon.ambient record @s ~ ~ ~ 4 0.5 0

particle dust_color_transition{from_color:[0.000,0.000,1.000],to_color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 1 2 1 1 99 force @s

