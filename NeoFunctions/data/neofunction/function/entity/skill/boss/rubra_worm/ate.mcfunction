# 命名：ate
# 説明：【追加：2026-10-08 ルブラ編】星核の花を食べた：光る節が 1 つ増え（12 まで）、少し回復する。最初の 1 回だけミラが弱点を教える
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/emerge
# =/function neofunction:entity/skill/boss/rubra_worm/ate

# 内容
execute store result score #rubra_g temp run data get storage neofunction:rubra worm.glow
execute if score #rubra_g temp matches ..11 run scoreboard players add #rubra_g temp 1
execute store result storage neofunction:rubra worm.glow int 1 run scoreboard players get #rubra_g temp
effect give @s minecraft:instant_health 1 1 true
playsound minecraft:entity.generic.eat hostile @a[distance=..48] ~ -38 ~ 2 0.4
function neofunction:entity/skill/boss/rubra_worm/set_glow
execute if data storage neofunction:rubra worm{hint:0b} run tellraw @a[distance=..64] [{"text":"<"},{"text":"ミラ","color":"#7FB3FF","bold":true},{"text":"> 「旅人さん、光！　赤く光ってるところが、さっき食べた星核！　そこが弱いんです！」"}]
data modify storage neofunction:rubra worm.hint set value 1b
