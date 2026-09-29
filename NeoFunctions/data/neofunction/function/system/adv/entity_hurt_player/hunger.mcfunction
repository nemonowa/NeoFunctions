# 命名：hunger
# 説明：
# >adv
# =/function neofunction:system/adv/entity_hurt_player/hunger

execute if score hunger temp matches 0 run return 0
execute store result storage neofunction:hunger Damage float 0.05 run attribute @s max_health get
function neofunction:system/adv/entity_hurt_player/hunger_macro with storage neofunction:hunger
title @s actionbar {"text":"食べないと死ぬ！！","color": "dark_red","bold": true,"underlined": true}