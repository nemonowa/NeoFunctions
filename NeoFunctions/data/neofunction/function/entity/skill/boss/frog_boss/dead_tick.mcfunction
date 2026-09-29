# 命名：dead_tick
# 説明：
# >world execute as @e[tag=FrogBossDead] at @s run function this
# =/function neofunction:entity/skill/boss/frog_boss/dead_tick

scoreboard players add @s generaltimer 1

#tp @a[distance=..32] 652 -52 2156 180 0

execute if score @s[tag=!FrogBossElite] generaltimer matches 1 on passengers run me §7§l「抗い、勝ち残ったか……見事。」
execute if score @s[tag=!FrogBossElite] generaltimer matches 61 on passengers run me §7§l「その強さ、群れを束ねるに足る。」
execute if score @s[tag=!FrogBossElite] generaltimer matches 121 on passengers run me §7§l「統率は移る……我から、お前へ。」
execute if score @s[tag=!FrogBossElite] generaltimer matches 181 on passengers run me §7§l「さあ、受け取れ。この淀みを。」

execute if score @s[tag=FrogBossElite] generaltimer matches 1 on passengers run me §7§l「見事……。我が『冠』の重さに、耐えてみせよ。」
execute if score @s[tag=FrogBossElite] generaltimer matches 61 on passengers run me §7§l「果てたか、我が軍勢……。いや、違うな。今、彼奴らの主はお前となったのだ。」
execute if score @s[tag=FrogBossElite] generaltimer matches 121 on passengers run me §7§l「毟り取れ、我が玉座を。……そして二度と、この泥濘から上がるな。」
execute if score @s[tag=FrogBossElite] generaltimer matches 181 run scoreboard players set @s generaltimer 241



execute if score @s generaltimer matches 1 run playsound minecraft:entity.frog.death hostile @a[distance=..32] ~ ~ ~ 100 0.5
execute if score @s generaltimer matches 61 run playsound minecraft:entity.frog.death hostile @a[distance=..32] ~ ~ ~ 100 0.5
execute if score @s generaltimer matches 121 run playsound minecraft:entity.frog.death hostile @a[distance=..32] ~ ~ ~ 100 0.5
execute if score @s generaltimer matches 181 run playsound minecraft:entity.frog.death hostile @a[distance=..32] ~ ~ ~ 100 0.5


execute unless score @s generaltimer matches 241 run return 0
tag @s add boss
damage @s 340282356779733661637539395458142568447 out_of_world by @p[distance=..32]
execute on passengers run tag @s add del
advancement grant @a[distance=..32] only neoadvancement:ceresta/root/3/8
tp @a[distance=..32] 586 -53 2167 180 0
fill 652 -59 2138 652 -59 2138 lapis_block replace redstone_block
fill 650 -33 2136 654 -33 2140 white_stained_glass