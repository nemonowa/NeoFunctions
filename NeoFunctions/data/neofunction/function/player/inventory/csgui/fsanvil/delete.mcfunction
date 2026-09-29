# 命名：delete
# 説明：カスタムGUIのチェスト付きトロッコを消去する
# >/function neofunction:player/inventory/csgui/fsanvil/tick
# =/function neofunction:player/inventory/csgui/fsanvil/delete

# 内容
kill @e[tag=fsanvilset,distance=..4]
kill @s
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{GuiItem:1b}}}}]
