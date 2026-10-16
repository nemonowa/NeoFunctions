# 命名：hand_get
# 説明：持ち物の $(s) 番を storage neofunction:rubra hand に写す
# 実行条件：実行者 プレイヤー。引数 s（SelectedItemSlot）
# >/function neofunction:system/world/ceresta/rubra/mine/hand
# =/function neofunction:system/world/ceresta/rubra/mine/hand_get

# 内容
$data modify storage neofunction:rubra hand set from entity @s Inventory[{Slot:$(s)b}]
