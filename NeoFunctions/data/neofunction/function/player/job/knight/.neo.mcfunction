# 命名：.neo
# 説明：職業個別のtick処理
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/knight/.neo


# パッシブ効果：6..12
# execute at @s if entity @e[tag=enemy,distance=..6] run title @s actionbar {"text":"[管理者通知],distance=..6","color":"red"}.
# execute at @s if entity @e[tag=enemy,distance=6..12] run title @s actionbar {"text":"[管理者通知],distance=6..12","color":"red"}
# execute at @s if entity @e[tag=enemy,distance=12..18] run title @s actionbar {"text":"[管理者通知],distance=12..18","color":"red"}


# 媒体所持事項
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] run return run function neofunction:player/job/knight/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run return run function neofunction:player/job/knight/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run return run function neofunction:player/job/knight/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run return run function neofunction:player/job/knight/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run return run function neofunction:player/job/knight/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run return run function neofunction:player/job/knight/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run function neofunction:player/job/knight/weapon


