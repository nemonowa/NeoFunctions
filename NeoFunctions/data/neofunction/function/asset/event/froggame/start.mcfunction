# 命名：5s
# 説明：tutorial
# >/function neofunction:asset/event/tutorial
# =/function neofunction:asset/event/froggame/start


# 内容
title @a[tag=froggame] subtitle [{"color":"#61D5FF","text":"F"},{"color":"#69CAFF","text":"r"},{"color":"#71BEFF","text":"o"},{"color":"#7AB3FF","text":"g "},{"color":"#82A8FF","text":"G"},{"color":"#8A9CFF","text":"a"},{"color":"#9291FF","text":"m"},{"color":"#9A85FF","text":"e "},{"color":"#AB6FFF","text":"– "},{"color":"#9A85FF","text":"W"},{"color":"#8A9CFF","text":"a"},{"color":"#7AB3FF","text":"v"},{"color":"#71BEFF","text":"e "},{"color":"#61D5FF","text":"1"}]

title @a[tag=froggame] title [{"text":"|||","color":"dark_aqua","bold":true,"obfuscated":true},{"text":" GO ","color":"blue","obfuscated":false},{"text":"|||"}]

execute as @a[tag=froggame] at @s run playsound minecraft:block.bell.use record @s ~ ~ ~ 1 1.0

#execute in neodimension:ceresta_festa run tp @a[tag=froggame] 1013.54 44.00 2157.16 90.0 0

#報酬判定に使うスコア
scoreboard players set froggame temp 0

execute as @a[tag=froggame] at @s run function neofunction:system/music/finish
execute as @a[tag=froggame] at @s run function neofunction:system/music/battle_fun/play
# ゲーム開始時に一括予約
execute as @a[tag=froggame] at @s run function neofunction:player/armor/lock/set
schedule function neofunction:asset/event/froggame/w1 1s
schedule function neofunction:asset/event/froggame/w2 20s
schedule function neofunction:asset/event/froggame/w3 40s
schedule function neofunction:asset/event/froggame/w4 60s
schedule function neofunction:asset/event/froggame/w5 80s
schedule function neofunction:asset/event/froggame/w6 100s
schedule function neofunction:asset/event/froggame/w7 120s
schedule function neofunction:asset/event/froggame/w8 140s
schedule function neofunction:asset/event/froggame/w9 160s
schedule function neofunction:asset/event/froggame/w10 180s
schedule function neofunction:asset/event/froggame/w11 200s
schedule function neofunction:asset/event/froggame/w12 220s
schedule function neofunction:asset/event/froggame/w13 240s
schedule function neofunction:asset/event/froggame/w14 260s
schedule function neofunction:asset/event/froggame/w15 280s
# W15以降はインフィニティモード(無限湧き・自己再スケジュール式)へ移行
# 固定の end 呼び出しはここでは行わない(全滅時のみ respawn.mcfunction 経由で end が呼ばれる)
schedule function neofunction:asset/event/froggame/infinity 300s