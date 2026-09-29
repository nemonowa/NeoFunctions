# 命名：restore_equipment.mcfunction
# 説明：【追加：2026-09-27 26.3対応】退避した防具・オフハンド（equipment）を item_display 経由で復元する（26.3 では防具・オフハンドが Inventory ではなく equipment に保存されるため）
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore_do
# =/function neofunction:system/world/ceresta/parkour/restore_equipment

execute if data storage neofunction:dungeon_tmp equip.head run data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp equip.head
execute if data storage neofunction:dungeon_tmp equip.head run item replace entity @s armor.head from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp equip.chest run data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp equip.chest
execute if data storage neofunction:dungeon_tmp equip.chest run item replace entity @s armor.chest from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp equip.legs run data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp equip.legs
execute if data storage neofunction:dungeon_tmp equip.legs run item replace entity @s armor.legs from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp equip.feet run data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp equip.feet
execute if data storage neofunction:dungeon_tmp equip.feet run item replace entity @s armor.feet from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
execute if data storage neofunction:dungeon_tmp equip.offhand run data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp equip.offhand
execute if data storage neofunction:dungeon_tmp equip.offhand run item replace entity @s weapon.offhand from entity @e[type=item_display,tag=parkour_restore,limit=1] contents
data remove storage neofunction:dungeon_tmp equip
