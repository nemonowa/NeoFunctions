# 命名：
# 説明：テンプレート：codeにも書き込まないと呼び出されないので注意
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381310667042062428
# >/function neofunction:system/trigger/code
# >/trigger code set 1
# =/function neofunction:system/trigger/code/


## 内容：
scoreboard players set @s name 1000

data modify storage neofunction:name name set value '{"text":"異空の艦隊員","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：異空機関の新兵の称号"}]}}'

tellraw @s[advancements={neoadvancement:nexus/root=true}] [{"text":"⌖ ","bold":true,"italic":false},{"text":"異空の艦隊員","bold":true,hover_event:{"action":"show_text","value":[{"text":"説明：異空機関の新兵の称号"}]},click_event:{"action":"run_command",command:"/trigger code set 1000"}}]


