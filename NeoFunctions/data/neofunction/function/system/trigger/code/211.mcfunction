# 命名：211
# 説明：トリガー：チュートリアル開始処理
# >/function neofunction:asset/tellraw/cai1
# >/trigger code set 211
# =/function neofunction:system/trigger/code/211


# 内容
execute unless dimension neodimension:nexus run return run tellraw @s {"text":"注：NEXUS外では使用不可","color":"red","bold":true,"italic":false}
#execute in neodimension:nexus run tp @s 1280.0 138 1280.0
function neofunction:system/pos/.macro with storage pos:24
function neofunction:asset/tellraw/nexus


