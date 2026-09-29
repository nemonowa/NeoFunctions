# 命名：.neo
# 説明：NBT変更してから削除
# 実行条件：ただの矢
# >/function neofunction:entity/.spawn/obj
# =/function neofunction:entity/.spawn/obj/arrow/.neo


# 内容：弓への個別処理
execute at @s on origin if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1428.0f]}}}}] as @e[distance=0,tag=!sansa] run function neofunction:entity/.spawn/obj/arrow/sansa

# 矢への個別処理
execute as @s[nbt={item:{components:{"minecraft:potion_contents":{custom_color:16566272}}}}] run function neofunction:entity/.spawn/obj/arrow/torch
execute as @s[nbt={item:{components:{"minecraft:potion_contents":{custom_color:7143676}}}}] run data merge entity @s {PortalCooldown:600,NoGravity:1b}
execute as @s[nbt={item:{components:{"minecraft:custom_model_data":{floats:[1120.0f]}}}}] run function neofunction:entity/.spawn/obj/arrow/sikisai
execute as @s[nbt={item:{components:{"minecraft:custom_model_data":{floats:[1676.0f]}}}}] at @s run function neofunction:entity/.spawn/obj/arrow/prespark
execute as @s[nbt={item:{components:{"minecraft:custom_model_data":{floats:[1693.0f]}}}}] at @s run function neofunction:entity/.spawn/obj/arrow/item1693

# スキル別処理
scoreboard players set #Calc1 temp 0
execute on origin run scoreboard players set #Calc1 temp 1
execute if score #Calc1 temp matches 0 run return 0
function neofunction:entity/.spawn/obj/arrow/shooter
function neofunction:entity/.spawn/obj/arrow/skill66


