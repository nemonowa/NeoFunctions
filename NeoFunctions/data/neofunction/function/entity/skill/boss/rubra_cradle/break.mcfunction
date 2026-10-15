# 命名：break
# 説明：欠片 i を砕く：赤い光が弾け、黒い煙が噴き出す。セレンの体力が 40 減る（brk +1）。初めて砕いたときだけミラの声
# 実行条件：引数 i（1〜6）
# >/function neofunction:entity/skill/boss/rubra_cradle/hit
# =/function neofunction:entity/skill/boss/rubra_cradle/break

# 内容
$execute as @e[type=item_display,tag=rubra_frag$(i)] at @s run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 0 30 normal
$execute as @e[type=item_display,tag=rubra_frag$(i)] at @s run particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0.05 20 normal
$execute as @e[type=item_display,tag=rubra_frag$(i)] at @s run playsound minecraft:block.glass.break hostile @a[distance=..32] ~ ~ ~ 1.5 0.8
$execute if data storage neofunction:rubra cradle.pull{i:$(i)} run function neofunction:entity/skill/boss/rubra_cradle/pull_cancel
$kill @e[tag=rubra_frag$(i)]
$kill @e[tag=rubra_fraghit$(i)]
execute store result score #rc_v temp run data get storage neofunction:rubra cradle.brk
scoreboard players add #rc_v temp 1
execute store result storage neofunction:rubra cradle.brk int 1 run scoreboard players get #rc_v temp
execute if score #rc_v temp matches 1 run tellraw @a[distance=..40] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「欠片が砕けると、黒い水が抜けていく……！　でも、師匠が苦しそう……」"}]
playsound minecraft:entity.evoker.hurt hostile @a[distance=..40] ~ ~ ~ 1.5 1.2
function neofunction:entity/skill/boss/rubra_cradle/lose
