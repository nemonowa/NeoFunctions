# 命名：w14
# 説明：ウェーブ処理
# >/function neofunction:asset/event/froggame/w13
# =/function neofunction:asset/event/froggame/w14


# ウェーブ開始タイトル
title @a[tag=froggame] subtitle [{"color": "#AB6FFF", "text": "F"}, {"color": "#A37AFF", "text": "r"}, {"color": "#9A85FF", "text": "o"}, {"color": "#9291FF", "text": "g"}, {"color": "#8A9CFF", "text": " "}, {"color": "#82A8FF", "text": "G"}, {"color": "#7AB3FF", "text": "a"}, {"color": "#71BEFF", "text": "m"}, {"color": "#69CAFF", "text": "e"}, {"color": "#61D5FF", "text": " "}, {"color": "#61D5FF", "text": "–"}, {"color": "#69CAFF", "text": " "}, {"color": "#71BEFF", "text": "W"}, {"color": "#7AB3FF", "text": "a"}, {"color": "#82A8FF", "text": "v"}, {"color": "#8A9CFF", "text": "e"}, {"color": "#9291FF", "text": " "}, {"color": "#9A85FF", "text": "1"}, {"color": "#A37AFF", "text": "4"}]
title @a[tag=froggame] title [{"text": "|||", "color": "dark_aqua", "bold": true, "obfuscated": true}, {"text": " WAVE 14 ", "color": "aqua", "obfuscated": false}, {"text": "|||", "color": "dark_aqua", "bold": true, "obfuscated": true}]
execute as @a[tag=froggame] at @s run tellraw @s [{"text": "▶ ", "color": "dark_gray"}, {"text": "WAVE 14 出現: ", "color": "gray", "bold": true}, {"text": "エリートアイアン×1", "color": "gold"}, {"text": "、", "color": "dark_gray"}, {"text": "エリートスリンガー×1", "color": "gold"}, {"text": "、", "color": "dark_gray"}, {"text": "エリートストライカー×1", "color": "gold"}, {"text": "、", "color": "dark_gray"}, {"text": "アイアン×1", "color": "gray"}, {"text": "、", "color": "dark_gray"}, {"text": "自爆×1", "color": "red"}, {"text": "、", "color": "dark_gray"}, {"text": "スリンガー×1", "color": "aqua"}]


# 内容(最終決戦直前 / 計6体・アイアンが自爆を庇い、削り切る前に爆発を許すハイリスク編成)

execute in neodimension:ceresta_festa positioned 1027 44 2146 run function neofunction:asset/summon/704
execute in neodimension:ceresta_festa positioned 1027 44 2167 run function neofunction:asset/summon/703
execute in neodimension:ceresta_festa positioned 998 44 2167 run function neofunction:asset/summon/702
execute in neodimension:ceresta_festa positioned 998 44 2146 run function neofunction:asset/summon/689
execute in neodimension:ceresta_festa positioned 1015 44 2151 run function neofunction:asset/summon/690
execute in neodimension:ceresta_festa positioned 1010 44 2162 run function neofunction:asset/summon/685
#報酬判定に使うスコア
scoreboard players add froggame temp 1