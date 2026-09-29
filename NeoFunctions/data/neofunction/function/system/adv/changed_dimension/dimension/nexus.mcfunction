# 命名：nexus
# 説明：該当次元に転移したとき
# >/function neofunction:system/adv/changed_dimension/.neo
# =/function neofunction:system/adv/changed_dimension/dimension/nexus


# 内容：ネクサス
title @s title [{"text":">","color":"#00AAAA","bold":true,"italic":false,"underlined":true},{"text":"> ","color":"#0B8EBD"},{"text":"N","color":"#1672D0"},{"text":"E","color":"#2155E3"},{"text":"X","color":"#322BFF"},{"text":"U","color":"#2155E3"},{"text":"S ","color":"#1672D0"},{"text":"<","color":"#0B8EBD"},{"text":"<","color":"#00AAAA"}]

title @s subtitle [{"text":"= ","color":"dark_gray","bold":false,"italic":false},{"text":"異空","color":"dark_aqua","bold":false,"italic":false},{"text":"の並","color":"dark_gray","bold":false,"italic":false},{"text":"行","color":"blue","bold":false,"italic":false},{"text":"世界 =","color":"dark_gray","bold":false,"italic":false}]

playsound minecraft:block.respawn_anchor.ambient record @s ~ ~ ~ 4 2 1

playsound minecraft:block.respawn_anchor.deplete record @s ~ ~ ~ 4 1 1

playsound minecraft:block.respawn_anchor.charge record @s ~ ~ ~ 4 0.1 1

particle dust_color_transition{from_color:[0.353,0.267,0.596],to_color:[1.000,1.000,1.000],scale:1.5} ~ ~ ~ 1 2 1 0 99 force @s


