# 命名：meteor_start
# 説明：天墜の始まり：近くの人の足もと（4 人まで）と、舞台のあちこち 6 か所に星屑の落ちる目印。2 秒の予告のあと落ちる
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack2
# >/function neofunction:entity/skill/boss/rubra_void/attack3
# =/function neofunction:entity/skill/boss/rubra_void/meteor_start

# 内容
data modify storage neofunction:rubra fin merge value {a:2,c:40}
execute as @a[distance=..96,gamemode=!spectator,limit=4] at @s run summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark"]}
execute as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/scatter
playsound minecraft:entity.blaze.shoot hostile @a[distance=..128] ~ ~ ~ 3 0.5
tellraw @a[distance=..128] {"text":"空から、赤く燃える星屑が――天墜！","color":"#D7263D","italic":true}
