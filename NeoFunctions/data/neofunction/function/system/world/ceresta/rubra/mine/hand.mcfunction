# 命名：hand
# 説明：メインハンドの物を storage neofunction:rubra hand に写す。選んでいる番号（SelectedItemSlot）の持ち物から読む
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/world/ceresta/rubra/mine/forge
# >/function neofunction:system/world/ceresta/rubra/mine/forge_apply
# =/function neofunction:system/world/ceresta/rubra/mine/hand

# 内容
data remove storage neofunction:rubra hand
execute store result storage neofunction:rubra hand_slot.s int 1 run data get entity @s SelectedItemSlot
function neofunction:system/world/ceresta/rubra/mine/hand_get with storage neofunction:rubra hand_slot
