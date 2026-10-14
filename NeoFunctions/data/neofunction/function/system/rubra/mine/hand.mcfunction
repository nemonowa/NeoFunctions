# 命名：hand
# 説明：【追加：2026-10-15 ルブラ編】メインハンドの物を storage neofunction:rubra hand に写す。26.3 のプレイヤーのデータには SelectedItem が無いので、選んでいる番号（SelectedItemSlot）の持ち物から読む
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/rubra/mine/forge
# >/function neofunction:system/rubra/mine/forge_apply
# =/function neofunction:system/rubra/mine/hand

# 内容
data remove storage neofunction:rubra hand
execute store result storage neofunction:rubra hand_slot.s int 1 run data get entity @s SelectedItemSlot
function neofunction:system/rubra/mine/hand_get with storage neofunction:rubra hand_slot
