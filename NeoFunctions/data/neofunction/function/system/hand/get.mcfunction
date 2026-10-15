# 命名：get
# 説明：持ち物の $(s) 番を storage neofunction:hand item に写す
# 実行条件：実行者 プレイヤー。引数 s（SelectedItemSlot）
# >/function neofunction:system/hand
# =/function neofunction:system/hand/get

# 内容
$data modify storage neofunction:hand item set from entity @s Inventory[{Slot:$(s)b}]
