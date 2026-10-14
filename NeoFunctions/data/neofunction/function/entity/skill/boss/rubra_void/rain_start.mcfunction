# 命名：rain_start
# 説明：【追加：2026-10-09 ルブラ編】黒い雨の始まり：舞台のあちこち 10 か所に目印。1.5 秒の予告（黒い粒が降る）のあと、黒い水が弾けて 6 ダメージ、あとに黒い水の溜まり
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack
# >/function neofunction:entity/skill/boss/rubra_void/attack2
# >/function neofunction:entity/skill/boss/rubra_void/attack3
# =/function neofunction:entity/skill/boss/rubra_void/rain_start

# 内容
data modify storage neofunction:rubra fin merge value {a:3,c:30}
execute as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/scatter
execute as @e[type=marker,tag=rubra_sky_center,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/scatter
playsound minecraft:weather.rain.above hostile @a[distance=..128] ~ ~ ~ 3 0.5
tellraw @a[distance=..128] {"text":"黒い雨が、舞台に降りそそぐ――","color":"#6E7390","italic":true}
