# 命名：995
# 説明：異空の火器：crossbow所持時
# 説明：,{"text":" SP"}
# >
# =/function neofunction:system/adv/tick/cmd/995


# 所持時の処理：攻撃時に敵のHPを表示。

# スニーク時の処理：結界
scoreboard players remove @s[scores={sneak_time=1..}] SP 1
execute as @s[scores={sneak_time=1..}] at @s as @e[distance=..3,tag=enemy] run damage @s 0.1 minecraft:arrow
execute as @s[scores={sneak_time=1..}] run function neofunction:player/sp/.neo

# スニーク時の処理：バフ（自身の感覚を研ぎ澄ます
execute as @s[scores={sneak_time=1..}] run effect give @s minecraft:glowing 9 0 true
execute as @s[scores={sneak_time=1..}] run effect give @s minecraft:night_vision 9 0 true

# スニーク時の処理：スポナーを発光
execute as @s[scores={sneak_time=1..}] at @s as @e[tag=enemy,distance=..16] run effect give @s minecraft:glowing 1 0
execute as @s[scores={sneak_time=1..}] at @s as @e[tag=air,distance=..16] run effect give @s minecraft:glowing 1 0

# スニーク時の処理：演出
playsound block.beacon.activate record @s[scores={sneak_time=1..}] ~ ~ ~ 0.1 2 0.1
execute as @s[scores={sneak_time=1..}] run particle minecraft:dust{color:[1,1.0,1.0],scale:1.5} ~ ~1 ~ 0.5 0.8 0.5 0.5 3 normal

# nemo艦長のガチexecute幾何学
execute as @s[scores={sneak_time=1..}] run execute as @e[tag=roll,limit=1,sort=nearest] at @s positioned as @a[scores={sneak_time=1..}] positioned ~ ~0.3 ~ run particle minecraft:end_rod ^2 ^ ^ 0.1 0 0 0 1 normal
execute as @s[scores={sneak_time=1..}] run execute as @e[tag=roll,limit=1,sort=nearest] at @s positioned as @a[scores={sneak_time=1..}] positioned ~ ~0.3 ~ run particle minecraft:end_rod ^-2 ^ ^ 0.1 0 0 0 1 normal
# 超わかりやすい補講：(execute as 0-0-0-0-1 at @s positioned as @a run particle minecraft:end_rod ^2 ^ ^ 0.1 0 0 0 1 normal)


execute unless data entity @s SelectedItem.components{"minecraft:custom_model_data":{floats:[995.0f]}} run return 0

## 採掘力に応じてhasteをつけたい
data remove storage neofunction:item/995 Haste
data remove storage neofunction:item/995 MiningSpeed
# 外付けエフェクトの処理
execute if entity @s[tag=item995] if data entity @s active_effects[{id:"minecraft:haste"}].hidden_effect run data modify storage neofunction:item/995 Haste set from entity @s active_effects[{id:"minecraft:haste"}].hidden_effect
execute if entity @s[tag=!item995] if data entity @s active_effects[{id:"minecraft:haste"}] run data modify storage neofunction:item/995 Haste set from entity @s active_effects[{id:"minecraft:haste"}]
effect clear @s haste
scoreboard players operation MiningSpeed temp = @s MiningSpeed
execute if score @s HasteDuration matches 1.. run scoreboard players remove @s HasteDuration 1
execute if score @s HasteDuration matches 0 run scoreboard players reset @s HasteLevel
execute if score @s HasteDuration matches 0 run scoreboard players reset @s HasteDuration

execute if data storage neofunction:item/995 Haste run function neofunction:system/adv/tick/cmd/995_haste_effect

execute if score @s HasteLevel matches 1.. run function neofunction:system/adv/tick/cmd/995_haste_calc
# エフェクトをつける
scoreboard players remove MiningSpeed temp 1
execute if score MiningSpeed temp matches 100.. run scoreboard players set MiningSpeed temp 99
execute store result storage neofunction:item/995 MiningSpeed int 1 run scoreboard players get @s MiningSpeed
function neofunction:system/adv/tick/cmd/995_haste with storage neofunction:item/995
# 諸々
tag @s add item995







# particle minecraft:end_rod ^1 ^ ^ 0.1 0 0 0 1 normal
# particle minecraft:end_rod ^-1 ^ ^ 0.1 0 0 0 1 normal
