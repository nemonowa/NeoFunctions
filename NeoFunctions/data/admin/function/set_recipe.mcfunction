# 命名：set_recipe
# 説明：条件が整っているかチェック
# >
# =/function admin:set_recipe
execute unless block ~ ~-1 ~ dropper unless block ~ ~-1 ~ dispenser run return run tellraw @s[gamemode=creative] {"text":"Error＞ 適切なブロックが置かれていません","color":"dark_red"}
execute unless block ~ ~-2 ~ dropper unless block ~ ~-2 ~ dispenser run return run tellraw @s[gamemode=creative] {"text":"Error＞ 適切なブロックが置かれていません","color":"dark_red"}


# 2マス下のドロッパーを素材、1マス下のドロッパーを完成品としてレシピを登録

data remove storage neofunction:crafter Temp

data modify storage neofunction:crafter Temp.recipe_raw set from block ~ ~-2 ~ Items
function admin:system/set_recipe/recipe_loop
execute if data storage neofunction:crafter Temp.recipe[{Slot:3b}] run data modify storage neofunction:crafter Temp.recipe[{Slot:3b}].Slot set value 9b
execute if data storage neofunction:crafter Temp.recipe[{Slot:4b}] run data modify storage neofunction:crafter Temp.recipe[{Slot:4b}].Slot set value 10b
execute if data storage neofunction:crafter Temp.recipe[{Slot:5b}] run data modify storage neofunction:crafter Temp.recipe[{Slot:5b}].Slot set value 11b
execute if data storage neofunction:crafter Temp.recipe[{Slot:6b}] run data modify storage neofunction:crafter Temp.recipe[{Slot:6b}].Slot set value 18b
execute if data storage neofunction:crafter Temp.recipe[{Slot:7b}] run data modify storage neofunction:crafter Temp.recipe[{Slot:7b}].Slot set value 19b
execute if data storage neofunction:crafter Temp.recipe[{Slot:8b}] run data modify storage neofunction:crafter Temp.recipe[{Slot:8b}].Slot set value 20b

data modify storage neofunction:crafter Temp.result_raw set from block ~ ~-1 ~ Items
function admin:system/set_recipe/result_loop
execute if data storage neofunction:crafter Temp.result[{Slot:3b}] run data modify storage neofunction:crafter Temp.result[{Slot:3b}].Slot set value 15b
execute if data storage neofunction:crafter Temp.result[{Slot:4b}] run data modify storage neofunction:crafter Temp.result[{Slot:4b}].Slot set value 16b
execute if data storage neofunction:crafter Temp.result[{Slot:5b}] run data modify storage neofunction:crafter Temp.result[{Slot:5b}].Slot set value 17b
execute if data storage neofunction:crafter Temp.result[{Slot:6b}] run data modify storage neofunction:crafter Temp.result[{Slot:6b}].Slot set value 24b
execute if data storage neofunction:crafter Temp.result[{Slot:7b}] run data modify storage neofunction:crafter Temp.result[{Slot:7b}].Slot set value 25b
execute if data storage neofunction:crafter Temp.result[{Slot:8b}] run data modify storage neofunction:crafter Temp.result[{Slot:8b}].Slot set value 26b
execute if data storage neofunction:crafter Temp.result[{Slot:0b}] run data modify storage neofunction:crafter Temp.result[{Slot:0b}].Slot set value 6b
execute if data storage neofunction:crafter Temp.result[{Slot:1b}] run data modify storage neofunction:crafter Temp.result[{Slot:1b}].Slot set value 7b
execute if data storage neofunction:crafter Temp.result[{Slot:2b}] run data modify storage neofunction:crafter Temp.result[{Slot:2b}].Slot set value 8b

data remove storage neofunction:crafter Temp.recipe_raw
data remove storage neofunction:crafter Temp.result_raw

data modify storage neofunction:crafter crafter_recipe append from storage neofunction:crafter Temp

tellraw @s[gamemode=creative] {"text":"System>レシピの一時保存が完了しました","color": "gold","bold": true,hover_event: {"action": "show_text",value: {"text": "settingsの実行で消滅します"}}}

#tellraw @s[gamemode=creative] [{"text":"data modify storage neofunction:crafter crafter_recipe append value "},{"storage":"neofunction:crafter","nbt":"crafter_recipe[-1]"}]

summon text_display ~ ~ ~ {Tags:["del","resolve"],text:{"storage":"neofunction:crafter","nbt":"crafter_recipe[-1]"},alignment:"center",view_range:0}
data modify storage neofunction:crafter Temp.text set string entity @e[tag=resolve,limit=1,sort=nearest] text 1 -1

function admin:system/set_recipe/macro with storage neofunction:crafter Temp

data remove storage neofunction:crafter Temp
kill @e[tag=resolve,limit=1,sort=nearest]