# 命名：setup
# 説明：第二章の NPC と仕掛けを置く準備：チャンクを読み込んだまま固定し、2 秒後に setup_2 で置く
# 説明：手で実行するときは /function neofunction:system/rubra/d2/setup（進み具合は変えない）
# >/function neofunction:system/adv/tick/quest/40/d2/420
# >/function neofunction:system/rubra/d2/reset
# =/function neofunction:system/rubra/d2/setup

# 内容
execute in neodimension:ceresta_festa run forceload add 925 3110 990 3300
schedule function neofunction:system/rubra/d2/setup_2 40t replace
