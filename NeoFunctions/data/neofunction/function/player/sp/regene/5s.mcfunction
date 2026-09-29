# 命名：5s
# 説明：SP回復処理
# 実行条件：execute unless score nosp temp matches -1 as @a[scores={food=10..}] run
# >/function neofunction:system/clock/5_second
# =/function neofunction:player/sp/regene/5s


# 内容


#ARIAのスキル用回復
execute as @a[scores={LVL=15..},nbt={active_effects:[{id:"minecraft:glowing",amplifier:117b}]}] at @s run execute as @e[distance=..16,tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=5] at @s run execute as @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:117b}]}] run execute if score @s SP < @s SPmax run function neofunction:player/sp/add/1p
execute as @a[scores={LVL=30..},nbt={active_effects:[{id:"minecraft:glowing",amplifier:117b}]}] at @s run execute as @e[distance=..16,tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=5] at @s run execute as @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:117b}]}] run execute if score @s SP < @s SPmax run function neofunction:player/sp/add/1p
execute as @a[scores={LVL=45..},nbt={active_effects:[{id:"minecraft:glowing",amplifier:117b}]}] at @s run execute as @e[distance=..16,tag=enemy,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]},limit=5] at @s run execute as @a[nbt={active_effects:[{id:"minecraft:glowing",amplifier:117b}]}] run execute if score @s SP < @s SPmax run function neofunction:player/sp/add/1p

#ソウルホープが付いてたら追加のSP回復
execute as @a[nbt={active_effects:[{id:"minecraft:bad_omen",amplifier:0b}]}] run return run execute if score @s SP < @s SPmax run function neofunction:player/sp/add/5p

execute as @a[nbt=!{active_effects:[{id:"minecraft:bad_omen",amplifier:0b}]},predicate=neofunction:random_chance/10] run title @s[gamemode=!creative] actionbar {"text":"のどが渇いてSP回復が遅い...","color":"gray","bold":true}








