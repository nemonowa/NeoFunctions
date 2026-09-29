# 命名：0
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block/0

## 内容
tellraw @s [{"text":"<",hover_event:{"action":"show_text","value":[{"text":"Click!!"}]},click_event:{"action":"suggest_command",command:"/trigger code set 1"}},{"selector":"0-0-0-0-1"},{"text":"> 貴官専用のキー・コードを発効しました。\nA KEY;CODE has been generated for "},{"selector":"@p"},{"text":" over.","color":"light_purple"}]

tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s [{"text":"("},{"keybind":"key.chat","color":"dark_aqua","bold":true},{"text":")でチャットを開き、以下をクリック"}]

function neofunction:system/storage/asset

tellraw @s [{"text":"公式サーバーの下記のチャンネルに送信してください",hover_event:{"action":"show_text","value":[{"text":"クリックすると公式「DISCORD」サーバーへリンク"}]},click_event:{"action":"open_url",url:"https://discord.gg/JD6JFJfG"}}]

tellraw @s [{"text":"———————————————————————-+++"}]

tellraw @s [{"text":"キーコードを登録すると、Discordの特別なロールやシークレットコードなどの特典と新ステージへの挑戦権が入手出来ます。"}]



clear @s minecraft:structure_block