# 命名：7
# 説明：シークレットコード
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block/7

## 内容
# tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> SEQUENCE-005を起動します。"},{"text":"over.","color":"light_purple"}]

tellraw @s [{"text":"<",hover_event:{"action":"show_text","value":[{"text":"Click!!"}]},click_event:{"action":"suggest_command",command:"/trigger code set 1"}},{"selector":"0-0-0-0-1"},{"text":"> シークレットコードを受け付けます。\n"},{"selector":"@p"},{"text":" has access to Terminal-NEXUS."},{"text":" over.","color":"light_purple"},{"text":"\n+++-———————————————————————\n("},{"keybind":"key.chat","color":"dark_aqua","bold":true},{"text":")でチャットを開き\n"},{"text":">> ここをクリック <<","color":"blue","bold":true,"underlined":true},{"text":"\nクリックの後コードを追記してください。\n———————————————————————-+++\nシークレットコードは隠し条件の達成時、特定イベントの達成時、DiscordやYoutubeなどのリアルイベントなどで入手出来ます。"}]

clear @s minecraft:structure_block
