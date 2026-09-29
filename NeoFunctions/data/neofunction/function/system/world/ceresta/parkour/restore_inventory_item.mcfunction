# 命名：restore_inventory_item.mcfunction
# 説明：通常インベントリのアイテム1件をSlot値からスロット名判定してitem replaceで復元する
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore_inventory_loop
# =/function neofunction:system/world/ceresta/parkour/restore_inventory_item

# 【変更：2026-09-27 26.3対応】アイテムを item_display から item replace … from で復元する（マクロ $(id)$(tag) $(Count) は 26.3 のアイテム形式を埋め込めないため）
execute if data storage neofunction:dungeon_tmp work[{Slot:0b}] run item replace entity @s hotbar.0 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:1b}] run item replace entity @s hotbar.1 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:2b}] run item replace entity @s hotbar.2 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:3b}] run item replace entity @s hotbar.3 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:4b}] run item replace entity @s hotbar.4 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:5b}] run item replace entity @s hotbar.5 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:6b}] run item replace entity @s hotbar.6 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:7b}] run item replace entity @s hotbar.7 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:8b}] run item replace entity @s hotbar.8 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:9b}] run item replace entity @s inventory.0 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:10b}] run item replace entity @s inventory.1 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:11b}] run item replace entity @s inventory.2 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:12b}] run item replace entity @s inventory.3 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:13b}] run item replace entity @s inventory.4 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:14b}] run item replace entity @s inventory.5 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:15b}] run item replace entity @s inventory.6 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:16b}] run item replace entity @s inventory.7 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:17b}] run item replace entity @s inventory.8 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:18b}] run item replace entity @s inventory.9 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:19b}] run item replace entity @s inventory.10 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:20b}] run item replace entity @s inventory.11 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:21b}] run item replace entity @s inventory.12 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:22b}] run item replace entity @s inventory.13 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:23b}] run item replace entity @s inventory.14 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:24b}] run item replace entity @s inventory.15 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:25b}] run item replace entity @s inventory.16 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:26b}] run item replace entity @s inventory.17 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:27b}] run item replace entity @s inventory.18 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:28b}] run item replace entity @s inventory.19 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:29b}] run item replace entity @s inventory.20 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:30b}] run item replace entity @s inventory.21 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:31b}] run item replace entity @s inventory.22 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:32b}] run item replace entity @s inventory.23 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:33b}] run item replace entity @s inventory.24 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:34b}] run item replace entity @s inventory.25 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:35b}] run item replace entity @s inventory.26 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:100b}] run item replace entity @s armor.feet from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:101b}] run item replace entity @s armor.legs from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:102b}] run item replace entity @s armor.chest from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:103b}] run item replace entity @s armor.head from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp work[{Slot:-106b}] run item replace entity @s weapon.offhand from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
