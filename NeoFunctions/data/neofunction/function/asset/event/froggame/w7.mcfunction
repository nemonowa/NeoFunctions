# 命名：w7
# 説明：ウェーブ処理
# >/function neofunction:asset/event/froggame/w6
# =/function neofunction:asset/event/froggame/w7


# ウェーブ開始タイトル
title @a[tag=froggame] subtitle [{"color": "#AB6FFF", "text": "F"}, {"color": "#A37AFF", "text": "r"}, {"color": "#9A85FF", "text": "o"}, {"color": "#9291FF", "text": "g"}, {"color": "#8A9CFF", "text": " "}, {"color": "#82A8FF", "text": "G"}, {"color": "#7AB3FF", "text": "a"}, {"color": "#71BEFF", "text": "m"}, {"color": "#69CAFF", "text": "e"}, {"color": "#61D5FF", "text": " "}, {"color": "#69CAFF", "text": "–"}, {"color": "#71BEFF", "text": " "}, {"color": "#7AB3FF", "text": "W"}, {"color": "#82A8FF", "text": "a"}, {"color": "#8A9CFF", "text": "v"}, {"color": "#9291FF", "text": "e"}, {"color": "#9A85FF", "text": " "}, {"color": "#A37AFF", "text": "7"}]
title @a[tag=froggame] title [{"text": "|||", "color": "dark_aqua", "bold": true, "obfuscated": true}, {"text": " WAVE 7 ", "color": "aqua", "obfuscated": false}, {"text": "|||", "color": "dark_aqua", "bold": true, "obfuscated": true}]
execute as @a[tag=froggame] at @s run tellraw @s [{"text": "▶ ", "color": "dark_gray"}, {"text": "WAVE 7 出現: ", "color": "gray", "bold": true}, {"text": "自爆×1", "color": "red"}, {"text": "、", "color": "dark_gray"}, {"text": "ストライカー×1", "color": "white"}, {"text": "、", "color": "dark_gray"}, {"text": "アイアン×1", "color": "gray"}, {"text": "、", "color": "dark_gray"}, {"text": "祈祷×1", "color": "green"}]


# 内容(自爆解禁 / 計4体)

execute in neodimension:ceresta_festa positioned 1027 44 2146 run function neofunction:asset/summon/690
execute in neodimension:ceresta_festa positioned 1027 44 2167 run function neofunction:asset/summon/684
execute in neodimension:ceresta_festa positioned 998 44 2167 run function neofunction:asset/summon/689
execute in neodimension:ceresta_festa positioned 998 44 2146 run function neofunction:asset/summon/687
#報酬判定に使うスコア
scoreboard players add froggame temp 1