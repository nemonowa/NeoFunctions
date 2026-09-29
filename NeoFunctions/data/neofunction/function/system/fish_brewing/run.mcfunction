# 命名：run
# 説明：
# >/function neofunction:system/fish_brewing/.neo
# =/function neofunction:system/fish_brewing/run

data modify block ~ ~ ~ Items[{components:{"minecraft:custom_model_data":{floats:[1507.0f]}}}].components."minecraft:potion_contents".custom_effects append from block ~ ~ ~ Items[{Slot:3b}].components."minecraft:custom_data".FishEffect[]
summon text_display ~ ~ ~ {Tags:["del","resolve"],view_range:0,alignment:"center"}
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
execute if data block ~ ~ ~ Items[{Slot:0b}].components{"minecraft:custom_model_data":{floats:[1507.0f]}} run data modify entity @e[tag=resolve,limit=1,sort=nearest] text set value [{"text":"","color": "light_purple","italic": false},{"nbt": 'Items[{Slot:3b}].components."minecraft:custom_data".FishPrefix',"block": "~ ~ ~","interpret": true},{"nbt": 'Items[{Slot:0b}].components."minecraft:custom_name"',"block": "~ ~ ~","interpret": true}]
execute if data block ~ ~ ~ Items[{Slot:0b}].components{"minecraft:custom_model_data":{floats:[1507.0f]}} run data modify block ~ ~ ~ Items[{Slot:0b}].components."minecraft:custom_name" set from entity @e[tag=resolve,limit=1,sort=nearest] text
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
execute if data block ~ ~ ~ Items[{Slot:1b}].components{"minecraft:custom_model_data":{floats:[1507.0f]}} run data modify entity @e[tag=resolve,limit=1,sort=nearest] text set value [{"text":"","color": "light_purple","italic": false},{"nbt": 'Items[{Slot:3b}].components."minecraft:custom_data".FishPrefix',"block": "~ ~ ~","interpret": true},{"nbt": 'Items[{Slot:1b}].components."minecraft:custom_name"',"block": "~ ~ ~","interpret": true}]
execute if data block ~ ~ ~ Items[{Slot:1b}].components{"minecraft:custom_model_data":{floats:[1507.0f]}} run data modify block ~ ~ ~ Items[{Slot:1b}].components."minecraft:custom_name" set from entity @e[tag=resolve,limit=1,sort=nearest] text
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
execute if data block ~ ~ ~ Items[{Slot:2b}].components{"minecraft:custom_model_data":{floats:[1507.0f]}} run data modify entity @e[tag=resolve,limit=1,sort=nearest] text set value [{"text":"","color": "light_purple","italic": false},{"nbt": 'Items[{Slot:3b}].components."minecraft:custom_data".FishPrefix',"block": "~ ~ ~","interpret": true},{"nbt": 'Items[{Slot:2b}].components."minecraft:custom_name"',"block": "~ ~ ~","interpret": true}]
execute if data block ~ ~ ~ Items[{Slot:2b}].components{"minecraft:custom_model_data":{floats:[1507.0f]}} run data modify block ~ ~ ~ Items[{Slot:2b}].components."minecraft:custom_name" set from entity @e[tag=resolve,limit=1,sort=nearest] text
kill @e[tag=resolve,limit=1,sort=nearest]

execute store result block ~ ~ ~ Items[{Slot:3b}].count byte 1 run data get block ~ ~ ~ Items[{Slot:3b}].count 0.99999
data modify block ~ ~ ~ BrewTime set value -1s

playsound block.trial_spawner.eject_item block @a[distance=..16] ~ ~ ~ 1 0.7
playsound block.brewing_stand.brew block @a[distance=..16] ~ ~ ~ 1 2
