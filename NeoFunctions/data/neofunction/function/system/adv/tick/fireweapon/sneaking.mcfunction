# 命名：sneaking
# 説明：スニークでセルフリロード
# >/adv
# =/function neofunction:system/adv/tick/fireweapon/sneaking


title @s[scores={sneak_time=1..}] actionbar [{"text":"SelfReroad：","color":"dark_gray","bold":true},{"score":{"name":"@s","objective":"sneak_time"}},{"text":"/"},{"text":"10 tick"}]
execute as @s[scores={sneak_time=10..},nbt={SelectedItem:{components:{"minecraft:custom_data":{reloading:0b,fireweapon:1b}}}}] run return run function neofunction:system/adv/tick/fireweapon/selfreload/mainhand
execute as @s[scores={sneak_time=10..},nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_data":{reloading:0b,fireweapon:1b}}}}}] run function neofunction:system/adv/tick/fireweapon/selfreload/offhand


