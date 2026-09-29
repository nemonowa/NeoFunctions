# 命名：1819
# 説明：
# >usingitem の進捗1776
# =/function neofunction:system/adv/item_used_on_block/1819

# メインハンド
#scoreboard players reset @s Cstick
execute if entity @s[tag=tamerred] run return run function neofunction:system/trigger/on/red
execute if entity @s[tag=tamerblue] run return run function neofunction:system/trigger/on/blue
execute if entity @s[tag=tamergreen] run return run function neofunction:system/trigger/on/green