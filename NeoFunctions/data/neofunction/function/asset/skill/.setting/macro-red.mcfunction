# 命名：macro-red
# 説明：テルローのホバーイベントの中にストレージ入れてるのの時点で殆どないのに、それをマクロで動的に操作してるとかいう狂気
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381299945050734643
# >/function neofunction:asset/skill/.setting/macro-red with storage neofunction:skill
# =/function neofunction:asset/skill/.setting/macro-red


# 内容
$tellraw @s ["",{"text":"⌖ G-Skill >>","underlined":true,"bold":true,"color":"red",hover_event:{"action":"show_text","value":[{"text":"クリックして変更！"}]},click_event:{"action":"run_command",command:"/trigger slotR set 0"}},{"storage":"neofunction:skill/$(red)","nbt":"name","interpret":true,hover_event:{"action":"show_text","value":[{"storage":"neofunction:skill/$(red)","nbt":"lore","interpret":true}]}}]
