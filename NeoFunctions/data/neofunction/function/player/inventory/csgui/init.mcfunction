# 命名：init
# 説明：カスタムインベントリーGUI
# 説明：カスタムスロットGUIトロッコのインベントリをロードする(macroのためitem指定が必要)
# 説明：内容
# >/function
# =/function neofunction:player/inventory/csgui/init

## 上書き
$item replace entity @s container.0 with $(item)
$item replace entity @s container.1 with $(item)
$item replace entity @s container.2 with $(item)
$item replace entity @s container.3 with $(item)
$item replace entity @s container.4 with $(item)
$item replace entity @s container.5 with $(item)
$item replace entity @s container.6 with $(item)
$item replace entity @s container.7 with $(item)
$item replace entity @s container.8 with $(item)
$item replace entity @s container.9 with $(item)
$item replace entity @s container.10 with $(item)
$item replace entity @s container.11 with $(item)
$item replace entity @s container.12 with $(item)
$item replace entity @s container.13 with $(item)
$item replace entity @s container.14 with $(item)
$item replace entity @s container.15 with $(item)
$item replace entity @s container.16 with $(item)
$item replace entity @s container.17 with $(item)
$item replace entity @s container.18 with $(item)
$item replace entity @s container.19 with $(item)
$item replace entity @s container.20 with $(item)
$item replace entity @s container.21 with $(item)
$item replace entity @s container.22 with $(item)
$item replace entity @s container.23 with $(item)
$item replace entity @s container.24 with $(item)
$item replace entity @s container.25 with $(item)
$item replace entity @s container.26 with $(item)

## それぞれのマインカートGUIに分岐
execute if entity @s[tag=fsanvil] run function neofunction:player/inventory/csgui/fsanvil/visual