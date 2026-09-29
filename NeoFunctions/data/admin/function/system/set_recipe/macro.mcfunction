# 命名：macro
# 説明：$tellraw @s[gamemode=creative] [{"text":"","hoverEvent": {"action": "show_text","contents": {"text": "クリックでコピー"}},"clickEvent": {"action": "copy_to_clipboard","value": "data modify storage neofunction:crafter crafter_recipe append value $(text)"}},{"text":"data modify storage neofunction:crafter crafter_recipe append value "},{"storage":"neofunction:crafter","nbt":"crafter_recipe[-1]"}]
# >
# =/function admin:system/set_recipe/macro

$tellraw @s[gamemode=creative] [{"text":"","color": "gold","bold": true},{"text":"レシピを保存・共有するには"},{"text":"ここ","color": "light_purple","bold": true,"underlined": true,hover_event: {"action": "show_text",value: {"text":"クリックしてコマンドをコピー"}},click_event: {"action": "copy_to_clipboard","value": "data modify storage neofunction:crafter crafter_recipe append value $(text)"}},{"text": "からコマンドをコピーして\n"},{"text":"neofunction:asset/setting/5_storage",hover_event: {"action": "show_text",value: {"text": "クリックでパスをコピー"}},click_event: {"action": "copy_to_clipboard","value": "%appdata%/.minecraft/saves/.NeoWorld/datapacks/𝐍𝐞𝐨𝐅𝐮𝐧𝐜𝐭𝐢𝐨𝐧𝐬/data/neofunction/functions/asset/setting/5_storage.mcfunction"}},{"text": "へ貼り付け"}]
