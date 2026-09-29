# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/shooter/.neo


# 職業個別のtick処理：媒体を持ってる判定
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] run return run function neofunction:player/job/shooter/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run return run function neofunction:player/job/shooter/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run return run function neofunction:player/job/shooter/weapon








