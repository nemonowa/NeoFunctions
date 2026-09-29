# 命名：nexus
# 説明：ディメンション：nexusに入ったとき
# 説明：ディメンション侵入するための処理(60s)
# 説明：プレイヤーが盲目状態 かつ Y座標が 0以下 のときだけ関数を実行する
# >
# =/function neofunction:system/adv/location/nexus


# 内容
function neofunction:system/pos/.macro with storage pos:24
tellraw @s[gamemode=creative] [{"text":"注：自動転移処理発動！","color":"red"}]