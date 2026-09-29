# 命名：lose
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/lose

#say カエルボス死亡
kill @e[tag=FrogSpread]
fill 650 -33 2136 654 -33 2140 white_stained_glass
function neofunction:entity/skill/boss/frog_boss/mode/temperate/finish
#execute positioned 652 -52 2138 run tp @a[distance=..32] 586 -53 2167 180 0
execute unless entity @s[tag=FrogBossElite] on passengers run me §7§l「沈め。ここは既に、我が海だ。」
execute if entity @s[tag=FrogBossElite] on passengers run me §7§l「我が五臓の泥に溶けよ。お前もまた、群れを成す一滴だ。」

#kill @e[type=minecraft:armor_stand,distance=..32,tag=air,limit=4,sort=nearest]
execute as @e[tag=FrogBossSpawner] run data modify entity @s RequiredPlayerRange set value 0s 
function neofunction:asset/bossbar/hide
execute on passengers run tag @s remove boss
kill @s