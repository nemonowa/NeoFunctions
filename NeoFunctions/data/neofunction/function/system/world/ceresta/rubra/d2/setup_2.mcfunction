# 命名：setup_2
# 説明：第二章の NPC と仕掛けを置く（setup_in をセレスタ次元で）。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/d2/setup
# =/function neofunction:system/world/ceresta/rubra/d2/setup_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/world/ceresta/rubra/d2/setup_in
execute in neodimension:ceresta_festa run forceload remove 925 3110 990 3300
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/world/ceresta/rubra/d2/setup（第二章の NPC と仕掛けを置きました）","color":"gray"}
