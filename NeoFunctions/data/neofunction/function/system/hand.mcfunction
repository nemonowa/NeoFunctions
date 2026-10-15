# 命名：hand
# 説明：実行者のメインハンドの物を storage neofunction:hand item に写す（何も持っていなければ item は無い）。成功を返す（if function でも使える）
# 説明：26.3 のプレイヤーのデータには SelectedItem が無いので、選んでいる番号（SelectedItemSlot）の持ち物から読む。以前の nbt={SelectedItem:X} は if data storage neofunction:hand {item:X} に置き換えた
# 実行条件：実行者 プレイヤー
# >（SelectedItem を使っていた関数の、その行の前）
# =/function neofunction:system/hand

# 内容
data remove storage neofunction:hand item
execute store result storage neofunction:hand slot.s int 1 run data get entity @s SelectedItemSlot
function neofunction:system/hand/get with storage neofunction:hand slot
return 1
