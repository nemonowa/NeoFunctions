# 命名：heaven
# 説明：ディメンション侵入するための処理(60s)
# 説明：プレイヤーが盲目状態 かつ Y座標が 0以下 のときだけ関数を実行する
# >
# =/function neofunction:system/adv/location/heaven


# 内容
execute if dimension neodimension:heaven run return 1
function neofunction:system/adv/changed_dimension/dimension/rainbow_heaven
execute in neodimension:nexus run tp @s 350.27 96.00 121.49 -810.97 30.14
tellraw @s[gamemode=creative] [{"text":"注：自動転移処理発動！","color":"red"}]
