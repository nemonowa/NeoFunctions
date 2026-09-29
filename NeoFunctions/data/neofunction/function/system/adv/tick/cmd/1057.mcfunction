# 命名：1057
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1057



## 内容
execute unless entity @s[nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:0b}]}] run tellraw @s [{"text":"🔯セットスペル発動【潮騒の名残】","color":"light_purple"}]
execute as @s at @s run playsound entity.boat.paddle_water record @p ~ ~ ~ 1.0 0.8
effect give @s minecraft:water_breathing 60