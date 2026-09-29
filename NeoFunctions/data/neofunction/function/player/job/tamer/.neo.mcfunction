# 命名：.neo
# 説明：
# >/function neofunction:player/job/.neo
# =/function neofunction:player/job/tamer/.neo


# パッシブ効果：6..12
# execute at @s if entity @e[tag=enemy,distance=..6] run title @s actionbar {"text":"[管理者通知],distance=..6","color":"red"}.
# execute at @s if entity @e[tag=enemy,distance=6..12] run title @s actionbar {"text":"[管理者通知],distance=6..12","color":"red"}
# execute at @s if entity @e[tag=enemy,distance=12..18] run title @s actionbar {"text":"[管理者通知],distance=12..18","color":"red"}

# スニーク時
# execute if entity @s[scores={sneak_time=1..}] run title @s actionbar {"text":"[管理者通知]scores={sneak_time=1..}","color":"red"}

# 説明：職業個別のtick処理
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] run return run function neofunction:player/job/tamer/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run return run function neofunction:player/job/tamer/weapon
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run return run function neofunction:player/job/tamer/weapon





