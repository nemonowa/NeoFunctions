# 命名：undefined
# 説明：データを消したのち存在すればappend
# >/function neofunction:player/inventory/csgui/fsanvil/combine/generate
# =/function neofunction:player/inventory/csgui/fsanvil/combine/undefined

# 内容
###MCStackerどうして"minecraft:"を消すの！
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}] run data modify storage neofunction:gui Anvil.status.atk set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}] run data modify storage neofunction:gui Anvil.status.atk set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_speed"}] run data modify storage neofunction:gui Anvil.status.ats set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_speed"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_speed"}] run data modify storage neofunction:gui Anvil.status.ats set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_speed"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_health"}] run data modify storage neofunction:gui Anvil.status.hp set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_health"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_health"}] run data modify storage neofunction:gui Anvil.status.hp set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_health"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:knockback_resistance"}] run data modify storage neofunction:gui Anvil.status.kbdef set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:knockback_resistance"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:knockback_resistance"}] run data modify storage neofunction:gui Anvil.status.kbdef set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:knockback_resistance"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}] run data modify storage neofunction:gui Anvil.status.spd set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}] run data modify storage neofunction:gui Anvil.status.spd set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] run data modify storage neofunction:gui Anvil.status.def set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}] run data modify storage neofunction:gui Anvil.status.def set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] run data modify storage neofunction:gui Anvil.status.tough set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}] run data modify storage neofunction:gui Anvil.status.tough set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:armor_toughness"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:luck"}] run data modify storage neofunction:gui Anvil.status.luck set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:luck"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:luck"}] run data modify storage neofunction:gui Anvil.status.luck set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:luck"}]

execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_absorpiton"}] run data modify storage neofunction:gui Anvil.status.abs set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_absorption"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_absorption"}] run data modify storage neofunction:gui Anvil.status.abs set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:max_absorption"}]

###本来必要ないが装飾用
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:follow_range"}] run data modify storage neofunction:gui Anvil.status.range set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:follow_range"}]
execute if data entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:follow_range"}] run data modify storage neofunction:gui Anvil.status.range set from entity @s Items[{Slot:16b}].components."minecraft:attribute_modifiers"[{type:"minecraft:follow_range"}]
