# 命名：fix_text_display
# 説明：（説明未記載）
# >
# =/function admin:fix_text_display
summon text_display ~ ~ ~ {Tags:["FixTextDisplay"],alignment:"center"}
data modify entity @s view_range set value 0.2f
data modify entity @e[tag=FixTextDisplay,limit=1,sort=nearest] {} merge from entity @s
kill @s
data modify entity @e[type=text_display,limit=1,sort=nearest] view_range set value 0.2f