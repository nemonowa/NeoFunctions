# 命名：water
# 説明：【追加：2026-10-09 ルブラ編】泉と滝を元の太さに戻す（結末 B・C）。滝の堰のチャンクを読み込んで、2 秒後に water_2
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/fin/449
# =/function neofunction:system/adv/tick/quest/40/fin/water

# 内容
execute in neodimension:ceresta_festa run forceload add 960 3205 980 3220
schedule function neofunction:system/adv/tick/quest/40/fin/water_2 40t replace
