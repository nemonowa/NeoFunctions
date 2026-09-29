# 命名：name
# 説明：異名システム
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381310667042062428
# 説明：↓追加方法
# 説明：data modify storage neofunction:name name set value '{"text":"未選択","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：ここをクリックして称号を設定可能"}]}}'
# >/function neofunction:system/trigger/code/8
# =/function neofunction:system/scoreboard/name

function neofunction:asset/name/get
## 内容：異名システム
tellraw @s {"text":"—————————<< ロールメニュー >>—————————","color":"dark_aqua","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：ロールメニューでは異名を変更できます。"}]}}

tellraw @s [{"text":"現在の異名：","color":"dark_aqua","bold":true},{"nbt":"name","storage":"neofunction:name","interpret":true}]

tellraw @s[advancements={neoadvancement:nexus/root=true}] [{"text":"⌖ ","bold":true,"italic":false},{"text":"異空の艦隊員","bold":true,hover_event:{"action":"show_text","value":[{"text":"説明：異空機関の新兵の称号"}]},click_event:{"action":"run_command",command:"/trigger code set 1000"}}]

tellraw @s[advancements={neoadvancement:ceresta/root=true}] {"text":"⌖ 漂流の異邦人","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：エンダードラゴンを討滅したクラフターの一般的な称号。"}]},click_event:{"action":"run_command",command:"/trigger code set 1001"}}

tellraw @s[advancements={neoadvancement:neoskill/root/999=true}] {"text":"⌖ 滅竜の建築者","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：エンダードラゴンを討滅したクラフターの一般的な称号。"}]},click_event:{"action":"run_command",command:"/trigger code set 404"}}

tellraw @s[advancements={neoadvancement:neoskill/root/999=true}] {"text":"⌖ 覚醒のエンリアライザー","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：エンダードラゴンを討滅したクラフターの一般的な称号。"}]},click_event:{"action":"run_command",command:"/trigger code set 404"}}

tellraw @s {"text":"以上が現在、獲得しているロールです。","color":"dark_aqua","bold":true,"italic":false}

tellraw @s {"text":"————————————————————————————————————","color":"dark_aqua","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"説明：ロールメニューでは異名を変更できます。"}]}}
