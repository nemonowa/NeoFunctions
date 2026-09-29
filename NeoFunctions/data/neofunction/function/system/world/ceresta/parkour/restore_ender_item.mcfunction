# 命名：restore_ender_item.mcfunction
# 説明：エンダーチェストのアイテム1件をSlot値からスロット名判定してitem replaceで復元する
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore_ender_loop
# =/function neofunction:system/world/ceresta/parkour/restore_ender_item

# 【変更：2026-09-27 26.3対応】アイテムを item_display から item replace … from で復元する（マクロ $(id)$(tag) $(Count) は 26.3 のアイテム形式を埋め込めないため）
execute if data storage neofunction:dungeon_tmp ender[{Slot:0b}] run item replace entity @s enderchest.0 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:1b}] run item replace entity @s enderchest.1 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:2b}] run item replace entity @s enderchest.2 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:3b}] run item replace entity @s enderchest.3 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:4b}] run item replace entity @s enderchest.4 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:5b}] run item replace entity @s enderchest.5 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:6b}] run item replace entity @s enderchest.6 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:7b}] run item replace entity @s enderchest.7 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:8b}] run item replace entity @s enderchest.8 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:9b}] run item replace entity @s enderchest.9 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:10b}] run item replace entity @s enderchest.10 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:11b}] run item replace entity @s enderchest.11 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:12b}] run item replace entity @s enderchest.12 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:13b}] run item replace entity @s enderchest.13 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:14b}] run item replace entity @s enderchest.14 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:15b}] run item replace entity @s enderchest.15 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:16b}] run item replace entity @s enderchest.16 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:17b}] run item replace entity @s enderchest.17 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:18b}] run item replace entity @s enderchest.18 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:19b}] run item replace entity @s enderchest.19 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:20b}] run item replace entity @s enderchest.20 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:21b}] run item replace entity @s enderchest.21 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:22b}] run item replace entity @s enderchest.22 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:23b}] run item replace entity @s enderchest.23 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:24b}] run item replace entity @s enderchest.24 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:25b}] run item replace entity @s enderchest.25 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp ender[{Slot:26b}] run item replace entity @s enderchest.26 from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
