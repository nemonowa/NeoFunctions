# 命名：setup
# 説明：紅脈の坑（第一章の迷宮）の仕掛けと NPC を置く準備：チャンクを読み込んだまま固定し、2 秒後に setup_2 で置く
# 説明：迷宮の地形（region の差し替え、またはデータパック rubra_dungeon1 の build）を先に済ませておくこと
# >/function neofunction:system/adv/tick/quest/40/d1/start
# =/function neofunction:system/world/ceresta/rubra/d1/setup

# 内容
execute in neodimension:ceresta_festa run forceload add 776 3240 890 3295
schedule function neofunction:system/world/ceresta/rubra/d1/setup_2 40t replace
