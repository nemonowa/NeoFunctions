# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/assasin/.neo


# 説明：職業個別のtick処理
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] run return run function neofunction:player/job/assasin/weapon
execute unless entity @s[nbt={SelectedItem:{}}] run return run function neofunction:player/job/assasin/weapon






