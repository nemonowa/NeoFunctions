# 命名：tutorial
# 説明：システム
# >/function neofunction:system/clock/60_second
# =/function neofunction:asset/event/tutorial


## 内容
tellraw @a [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> 初期起動シーケンス開始。\n"},{"selector":"@s"},{"text":" を"},{"text":"回帰任務001","color":"dark_aqua","bold":true},{"text":"に異動します。"},{"text":"over.","color":"light_purple"},{"text":"\n✔ 準備完了","color":"green",hover_event:{"action":"show_text","value":[{"text":"Go!!"}]},click_event:{"action":"run_command",command:"/trigger code set 55555"}},{"text":"\n✖ 退出する","color":"red",hover_event:{"action":"show_text","value":[{"text":"none"}]},click_event:{"action":"run_command",command:"/trigger code set 9"}}]

tag @s add go


#
schedule function neofunction:asset/event/tutorial/10s 1s replace
schedule function neofunction:asset/event/tutorial/5s 6s replace
schedule function neofunction:asset/event/tutorial/3s 8s replace
schedule function neofunction:asset/event/tutorial/2s 9s replace
schedule function neofunction:asset/event/tutorial/1s 10s replace
schedule function neofunction:asset/event/tutorial/0s 11s replace


