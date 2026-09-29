# 命名：w9
# 説明：ウェーブ処理
# >/function neofunction:asset/event/froggame/w8
# =/function neofunction:asset/event/froggame/w9


# ウェーブ開始タイトル
title @a[tag=froggame] subtitle [{"color": "#AB6FFF", "text": "F"}, {"color": "#A37AFF", "text": "r"}, {"color": "#9A85FF", "text": "o"}, {"color": "#9291FF", "text": "g"}, {"color": "#8A9CFF", "text": " "}, {"color": "#82A8FF", "text": "G"}, {"color": "#7AB3FF", "text": "a"}, {"color": "#71BEFF", "text": "m"}, {"color": "#69CAFF", "text": "e"}, {"color": "#61D5FF", "text": " "}, {"color": "#69CAFF", "text": "–"}, {"color": "#71BEFF", "text": " "}, {"color": "#7AB3FF", "text": "W"}, {"color": "#82A8FF", "text": "a"}, {"color": "#8A9CFF", "text": "v"}, {"color": "#9291FF", "text": "e"}, {"color": "#9A85FF", "text": " "}, {"color": "#A37AFF", "text": "9"}]
title @a[tag=froggame] title [{"text": "|||", "color": "dark_aqua", "bold": true, "obfuscated": true}, {"text": " WAVE 9 ", "color": "aqua", "obfuscated": false}, {"text": "|||", "color": "dark_aqua", "bold": true, "obfuscated": true}]
execute as @a[tag=froggame] at @s run tellraw @s [{"text": "▶ ", "color": "dark_gray"}, {"text": "WAVE 9 出現: ", "color": "gray", "bold": true}, {"text": "エリートストライカー×1", "color": "gold"}, {"text": "、", "color": "dark_gray"}, {"text": "自爆×1", "color": "red"}, {"text": "、", "color": "dark_gray"}, {"text": "祈祷×1", "color": "green"}, {"text": "、", "color": "dark_gray"}, {"text": "スリンガー×1", "color": "aqua"}, {"text": "、", "color": "dark_gray"}, {"text": "アイアン×1", "color": "gray"}]


# 内容(エリートストライカー解禁 / 計5体・アイアンで被弾肩代わりシナジー開始)
# BGMループ開始(以降は bgm_loop.mcfunction が161秒周期で自己再スケジュールし続ける)
function neofunction:asset/event/froggame/bgm_loop
execute in neodimension:ceresta_festa positioned 1027 44 2146 run function neofunction:asset/summon/702
execute in neodimension:ceresta_festa positioned 1027 44 2167 run function neofunction:asset/summon/690
execute in neodimension:ceresta_festa positioned 998 44 2167 run function neofunction:asset/summon/687
execute in neodimension:ceresta_festa positioned 998 44 2146 run function neofunction:asset/summon/685
execute in neodimension:ceresta_festa positioned 1015 44 2151 run function neofunction:asset/summon/689
#報酬判定に使うスコア
scoreboard players add froggame temp 1