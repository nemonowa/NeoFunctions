# 命名：200
# 説明：トリガー：チュートリアル開始処理
# >/function neofunction:system/trigger/code
# >/function neofunction:system/adv/tick/looking_at/cai
# >/trigger code set 200
# =/function neofunction:system/trigger/code/200


# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}

function neofunction:asset/event/tutorial
function neofunction:asset/event/tutorial/10s


# 次の部屋のリセット処理
execute in neodimension:nexus run fill 1281 112 1325 1278 111 1325 white_stained_glass

