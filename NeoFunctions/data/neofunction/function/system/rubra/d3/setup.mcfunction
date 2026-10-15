# 命名：setup
# 説明：第三章の目印を置く準備：チャンクを読み込んだまま固定し、2 秒後に setup_2 で置く
# 説明：手で実行するときは /function neofunction:system/rubra/d3/setup（進み具合は変えない）
# >/function neofunction:system/adv/tick/quest/40/d3/432_end
# >/function neofunction:system/rubra/d3/reset
# =/function neofunction:system/rubra/d3/setup

# 内容
execute in neodimension:ceresta_festa run forceload add 900 3270 990 3316
schedule function neofunction:system/rubra/d3/setup_2 40t replace
