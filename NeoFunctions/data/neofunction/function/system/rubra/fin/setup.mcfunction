# 命名：setup
# 説明：【追加：2026-10-09 ルブラ編】終章の目印を置く準備：チャンクを読み込んだまま固定し、2 秒後に setup_2 で置く。手記 その一・三・四 の置き場も置き直す
# 実行条件：手で実行するときは /function neofunction:system/rubra/fin/setup（進み具合は変えない）
# >/function neofunction:system/adv/tick/quest/40/fin/440
# =/function neofunction:system/rubra/fin/setup

# 内容
execute in neodimension:ceresta_festa run forceload add 900 3270 945 3315
schedule function neofunction:system/rubra/fin/setup_2 40t replace
function neofunction:system/rubra/journals
