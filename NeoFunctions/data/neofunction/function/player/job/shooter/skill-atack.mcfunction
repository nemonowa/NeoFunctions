# 命名：skill-atack
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/shooter/skill-atack


# 説明：職業個別のtick処理
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] run return run function neofunction:player/job/shooter/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run return run function neofunction:player/job/shooter/weapon








