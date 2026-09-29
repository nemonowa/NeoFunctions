# 命名：show_skill_macro
# 説明：
# >/function neofunction:system/trigger/show_skill
# =/function neofunction:system/trigger/show_skill_macro

$tellraw @s ["",{"text":"⌖ $(C)-Skill >>","underlined":true,"bold":true,"color":"$(color)"},{"storage":"neofunction:skill/$(skill)","nbt":"name","interpret":true,hover_event:{"action":"show_text","value":[{"storage":"neofunction:skill/$(skill)","nbt":"lore","interpret":true}]}}]
