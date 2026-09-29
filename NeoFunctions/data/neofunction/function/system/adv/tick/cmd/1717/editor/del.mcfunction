# 命名：del
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/write
# =/function neofunction:system/adv/tick/cmd/1717/editor/del

execute if data storage neofunction:item/1717 data{Cursor:0} run return 0
execute store result storage neofunction:item/1717 data.Cursor int 1 run data get storage neofunction:item/1717 data.Cursor 0.9999
function neofunction:system/adv/tick/cmd/1717/editor/del_macro with storage neofunction:item/1717 data