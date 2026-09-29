# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/aria/.neo


# 説明：職業個別のtick処理
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] run return run function neofunction:player/job/aria/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run return run function neofunction:player/job/aria/weapon






