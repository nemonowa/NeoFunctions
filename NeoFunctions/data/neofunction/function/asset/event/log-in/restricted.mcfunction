# 命名：restricted
# 説明：特定の場所でリログしたら開始地点などに戻される処理
# >/function neofunction:asset/event/log-in
# =/function neofunction:asset/event/log-in/restricted


# ↓↓↓負荷的に座標指定推奨↓↓
# color of sanctuary
execute if entity @s unless entity @s[tag=!color1,tag=!color2,tag=!color3] run function neofunction:system/pos/.macro with storage pos:107
