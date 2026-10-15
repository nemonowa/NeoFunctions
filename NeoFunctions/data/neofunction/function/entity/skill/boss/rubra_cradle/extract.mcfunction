# 命名：extract
# 説明：欠片 i を守り石で引き剥がした：欠片はするりと抜けて、青い光に包まれて消える（傷つけない）。stone +1、セレンの体力が 40 減る
# 実行条件：引数 i（cradle.pull）
# >/function neofunction:entity/skill/boss/rubra_cradle/pull_tick
# =/function neofunction:entity/skill/boss/rubra_cradle/extract

# 内容
$execute as @e[type=item_display,tag=rubra_frag$(i)] at @s run particle minecraft:dust{color:[0.35,0.6,1.0],scale:1.6} ~ ~ ~ 0.4 0.4 0.4 0 40 normal
$execute as @e[type=item_display,tag=rubra_frag$(i)] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
$execute as @e[type=item_display,tag=rubra_frag$(i)] at @s run playsound minecraft:block.amethyst_block.chime player @a[distance=..32] ~ ~ ~ 1.5 1.4
$kill @e[tag=rubra_frag$(i)]
$kill @e[tag=rubra_fraghit$(i)]
tag @a remove rubra_puller
data modify storage neofunction:rubra cradle.pull set value {i:0,t:0}
execute store result score #rc_v temp run data get storage neofunction:rubra cradle.stone
scoreboard players add #rc_v temp 1
execute store result storage neofunction:rubra cradle.stone int 1 run scoreboard players get #rc_v temp
execute if score #rc_v temp matches 1 run tellraw @a[distance=..40] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「欠片が、するりと抜けた……師匠の顔から、少しだけ苦しみが消えた」"}]
function neofunction:entity/skill/boss/rubra_cradle/lose
