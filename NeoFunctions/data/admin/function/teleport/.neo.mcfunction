# 命名：転移の書
# 説明：ファストトラベルメニュー更新用
# >/function admin:give/shortcut/shortcut29
# =/function admin:teleport/.neo



## 内容
tellraw @s [{"text":"||","color":"green","bold":true,"italic":false,"obfuscated":true},{"text":"✧","color":"dark_aqua","obfuscated":false},{"text":"||","color":"yellow"},{"text":" 転移の書 ","color":"dark_aqua","underlined":true,"obfuscated":false},{"text":"||","color":"yellow"},{"text":"✧","color":"dark_aqua","obfuscated":false},{"text":"||"}]

tellraw @s [{"text":"__Open spreadsheet__\n","color":"dark_purple",hover_event:{"action":"show_text","value":[{"text":"click!!"}]},click_event:{"action":"open_url",url:"https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit#gid=887081197region!b10"}},{"text":" /tp 0-0-0-0-1\n",click_event:{"action":"suggest_command",command:"/tp 0-0-0-0-1"}},{"text":" /summon armor_stand\n",click_event:{"action":"suggest_command",command:"/execute align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {CustomName:'{\"text\":\"エリア名\",\"color\":\"blue\",\"bold\":true,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}',NoGravity:1b}"}},{"text":" /give all TP-book",click_event:{"action":"suggest_command",command:"/function admin:give/backdoor/all"}}]

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[-3.0f]}]
execute as @s[gamemode=creative] run function admin:give/backdoor/pos000

clear @s minecraft:written_book[minecraft:custom_model_data={floats:[-33.0f]}]
execute as @s[gamemode=creative] run function admin:give/backdoor/pos100







