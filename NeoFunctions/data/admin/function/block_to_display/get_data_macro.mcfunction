# 命名：get_data_macro
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/get_data_macro
 # get_data_macro.mcfunction
 # 
 #
 # Created by .
##
$tellraw @a[gamemode=creative] {"text": "/summon armor_stand ~ ~ ~ {Passengers:$(text)}",hover_event: {"action": "show_text",value: {"text": "クリップボードにコピー"}},click_event: {"action": "copy_to_clipboard","value": "/summon armor_stand ~ ~ ~ {Passengers:$(text)}"}}