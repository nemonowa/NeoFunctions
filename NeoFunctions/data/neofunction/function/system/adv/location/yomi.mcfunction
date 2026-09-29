# 命名：yomi
# 説明：ディメンション侵入するための処理(60s)
# 説明：プレイヤーが盲目状態 かつ Y座標が 0以下 のときだけ関数を実行する
# >
# =/function neofunction:system/adv/location/yomi


# 内容
function neofunction:system/adv/changed_dimension/dimension/daydream_nightmare
execute in neodimension:nexus run tp @s 330.28 75.00 50.52 -810.83 23.76
tellraw @s[gamemode=creative] [{"text":"注：自動転移処理発動！","color":"red"}]
