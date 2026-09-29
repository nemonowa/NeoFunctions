# 命名：.macro
# 説明：テルローのホバーイベントの中にストレージ入れてるのの時点で殆どないのに、それをマクロで動的に操作してるとかいう狂気
# 説明：https://discord.com/channels/1067520683715866634/1067521054622355527/1381299945050734643
# >/function neofunction:asset/skill/.setting
# >/function neofunction:asset/skill/.setting/.macro with storage neofunction:skill
# =/function neofunction:system/scoreboard/name/.macro



# 内容
$tellraw @s ["",{"text":"⌖ G-Skill >>","underlined":true,"bold":true,"color":"red",hover_event:{"action":"show_text","value":[{"text":"クリックして変更！"}]},click_event:{"action":"run_command",command:"/trigger slotR set 0"}},{"storage":"neofunction:skill/$(red)","nbt":"name","interpret":true,hover_event:{"action":"show_text","value":[{"storage":"neofunction:skill/$(red)","nbt":"lore","interpret":true}]}}]

$tellraw @s ["",{"text":"⌖ E-Skill >>","underlined":true,"bold":true,"color":"green",hover_event:{"action":"show_text","value":[{"text":"クリックして変更！"}]},click_event:{"action":"run_command",command:"/trigger slotG set 0"}},{"storage":"neofunction:skill/$(green)","nbt":"name","interpret":true,hover_event:{"action":"show_text","value":[{"storage":"neofunction:skill/$(green)","nbt":"lore","interpret":true}]}}]

$tellraw @s ["",{"text":"⌖ L-Skill >>","underlined":true,"bold":true,"color":"aqua",hover_event:{"action":"show_text","value":[{"text":"クリックして変更！"}]},click_event:{"action":"run_command",command:"/trigger slotB set 0"}},{"storage":"neofunction:skill/$(blue)","nbt":"name","interpret":true,hover_event:{"action":"show_text","value":[{"storage":"neofunction:skill/$(blue)","nbt":"lore","interpret":true}]}}]


# $tellraw @s ["",{"text":"⌖ G-Skill >>","underlined":true,"bold":true,"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"クリックして変更！"}]},"clickEvent":{"action":"run_command","value":"/trigger slotR set 0"}},{"storage":"neofunction:skill/$(red)","nbt":"name","interpret":true,"hoverEvent":{"action":"show_text","value":[{"storage":"neofunction:skill/$(red)","nbt":"lore","interpret":true}]}},{"text":"\n⌖ E-Skill >>","underlined":true,"bold":true,"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"クリックして変更！"}]},"clickEvent":{"action":"run_command","value":"/trigger slotG set 0"}},{"storage":"neofunction:skill/$(green)","nbt":"name","interpret":true,"hoverEvent":{"action":"show_text","value":[{"storage":"neofunction:skill/$(green)","nbt":"lore","interpret":true}]}},{"text":"\n⌖ L-Skill >>","underlined":true,"bold":true,"color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"クリックして変更！"}]},"clickEvent":{"action":"run_command","value":"/trigger slotB set 0"}},{"storage":"neofunction:skill/$(blue)","nbt":"name","interpret":true,"hoverEvent":{"action":"show_text","value":[{"storage":"neofunction:skill/$(blue)","nbt":"lore","interpret":true}]}}]"