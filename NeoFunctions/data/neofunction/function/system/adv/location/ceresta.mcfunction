# 命名：ceresta
# 説明：ディメンション侵入するための処理(60s)
# 説明：プレイヤーが盲目状態 かつ 水中 のときだけ関数を実行する
# >
# =/function neofunction:system/adv/location/ceresta


# 内容
execute if dimension neodimension:ceresta_festa run return 1
execute in neodimension:ceresta_festa run spreadplayers 1280 1280 64 128 false @s
tellraw @s[gamemode=creative] [{"text":"注：自動転移処理発動！","color":"red"}]



