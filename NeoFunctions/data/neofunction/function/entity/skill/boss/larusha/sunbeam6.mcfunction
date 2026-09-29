# 命名：sunbeam6
# 説明：
# >/function neofunction:entity/skill/boss/larusha/sunbeam1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/sunbeam6



execute as @e[tag=larusha] at @s run tag @s remove nowskilling
execute as @e[tag=larusha] at @s run data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:-1,show_icon:0b}]}
execute as @e[tag=sungolem] run kill @s
