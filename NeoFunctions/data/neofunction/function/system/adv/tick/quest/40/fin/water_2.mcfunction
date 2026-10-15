# 命名：water_2
# 説明：滝の堰を開ける（第二章の fall_restore）。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/adv/tick/quest/40/fin/water
# =/function neofunction:system/adv/tick/quest/40/fin/water_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d2/fall_restore
execute in neodimension:ceresta_festa run forceload remove 960 3205 980 3220
