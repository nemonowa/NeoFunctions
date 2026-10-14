# 命名：
# 説明：テンプレート：codeにも書き込まないと呼び出されないので注意
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381310667042062428
# >/function neofunction:system/trigger/code
# >/trigger code set 1
# =/function neofunction:system/trigger/code/


## 内容：
scoreboard players set @s name 1000

# 【変更：2026-10-14 26.3 対応】異名は文字ではなく文字の部品（hover_event）で保存する（JSON の文字だと 26.3 では読めず、文字のまま表示される）
data modify storage neofunction:name name set value {text:"異空の艦隊員",color:"dark_aqua",bold:1b,hover_event:{action:"show_text",value:[{text:"説明：異空機関の新兵の称号"}]}}

tellraw @s[advancements={neoadvancement:nexus/root=true}] [{"text":"⌖ ","bold":true,"italic":false},{"text":"異空の艦隊員","bold":true,hover_event:{"action":"show_text","value":[{"text":"説明：異空機関の新兵の称号"}]},click_event:{"action":"run_command",command:"/trigger code set 1000"}}]


