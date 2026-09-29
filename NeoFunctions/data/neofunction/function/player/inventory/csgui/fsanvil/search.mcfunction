# 命名：search
# 説明：カスタムインベントリーGUI
# 説明：カスタムスロットGUIトロッコが視点先にいるか
# 説明：内容
# >/function neofunction:player/inventory/csgui/fsanvil/tick
# =/function neofunction:player/inventory/csgui/fsanvil/search

execute anchored eyes positioned ^ ^ ^5 if entity @e[dx=0,dy=0,dz=0,type=minecraft:chest_minecart,limit=1,tag=fsanvil] run return 0
execute anchored eyes positioned ^ ^ ^4 if entity @e[dx=0,dy=0,dz=0,type=minecraft:chest_minecart,limit=1,tag=fsanvil] run return 0
execute anchored eyes positioned ^ ^ ^3 if entity @e[dx=0,dy=0,dz=0,type=minecraft:chest_minecart,limit=1,tag=fsanvil] run return 0
execute anchored eyes positioned ^ ^ ^2 if entity @e[dx=0,dy=0,dz=0,type=minecraft:chest_minecart,limit=1,tag=fsanvil] run return 0
execute anchored eyes positioned ^ ^ ^1 if entity @e[dx=0,dy=0,dz=0,type=minecraft:chest_minecart,limit=1,tag=fsanvil] run return 0
execute anchored eyes positioned ^ ^ ^ if entity @e[dx=0,dy=0,dz=0,type=minecraft:chest_minecart,limit=1,tag=fsanvil] run return 0

tag @s remove FSanvil