# 命名：hand_get
# 説明：【追加：2026-10-15 ルブラ編】持ち物の $(s) 番を storage neofunction:rubra hand に写す
# 実行条件：実行者 プレイヤー。引数 s（SelectedItemSlot）
# >/function neofunction:system/rubra/mine/hand
# =/function neofunction:system/rubra/mine/hand_get

# 内容
$data modify storage neofunction:rubra hand set from entity @s Inventory[{Slot:$(s)b}]
