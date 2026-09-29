# 命名：sunbeam3
# 説明：
# >/function neofunction:entity/skill/boss/larusha/sunbeam1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/sunbeam3

scoreboard players reset @e[tag=larusha] generaltimer
bossbar remove sunbeam

execute unless entity @e[tag=sungolem] as @e[tag=larusha] at @s run data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:-1,show_icon:0b}]}
execute unless entity @e[tag=sungolem] as @e[tag=larusha] at @s run tag @s remove nowskilling
execute unless entity @e[tag=sungolem] run schedule clear neofunction:entity/skill/boss/larusha/sunbeam6
execute unless entity @e[tag=sungolem] as @e[tag=larusha] at @s run return run me §fは§6§l§n太陽砲§fを唱えられなかった！
execute as @e[tag=larusha] at @s run me §fは§6§l§n太陽砲§fを唱えた！
execute as @e[tag=larusha] at @s as @a[distance=..64] at @s run playsound item.totem.use master @a ~ ~ ~ 1 1
function neofunction:entity/skill/boss/larusha/sunbeam4