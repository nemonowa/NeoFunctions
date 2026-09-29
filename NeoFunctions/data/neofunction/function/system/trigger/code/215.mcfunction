# 命名：215
# 説明：トリガー：チュートリアル開始処理
# >/function neofunction:asset/tellraw/cai2
# >/trigger code set 215
# =/function neofunction:system/trigger/code/215


# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}
execute in neodimension:nexus run tp @s 1209.0 128.0 1280.0 1531.0 5.0

