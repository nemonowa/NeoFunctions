# 命名：visual
# 説明：カスタムインベントリーGUI
# 説明：カスタムスロットGUIトロッコのインベントリをロードする
# >/function
# =/function neofunction:player/inventory/csgui/fsanvil/visual


# 内容
data remove entity @s Items[{Slot:10b}]
data remove entity @s Items[{Slot:12b}]
function neofunction:player/inventory/csgui/slot/14 {item:'minecraft:anvil{GuiItem:true}'}
data remove entity @s Items[{Slot:16b}]
function neofunction:player/inventory/csgui/slot/26 {item:"minecraft:red_stained_glass_pane{GuiItem:true}"}