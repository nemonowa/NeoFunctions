# 命名：tamer/knockback
# 説明：フックした敵(@s)を、tag:kbAttacker(釣り竿を使ったプレイヤー)から見た正面方向へ吹き飛ばす。
# >/function neofunction:asset/skill/tamer/fishingrodmacro 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) as @e[tag=hooked,limit=1,sort=nearest] 実行位置@s(@e[tag=hooked,limit=1,sort=nearest]時点)
# >/function neofunction:asset/skill/tamer/rodsplashhit 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) as @e[tag=hooked,limit=1,sort=nearest] as @e[tag=enemy,distance=..$(splashRadius),tag=!hooked] 実行位置@s(@e[tag=enemy,distance=..$(splashRadius),tag=!hooked]時点)
# =/function neofunction:asset/skill/tamer/knockback

#内容
execute unless entity @e[tag=kbAttacker,limit=1] run return 0

tag @s add kbTarget
execute store result score #kbPower temp run data get storage neofunction:tamer temp.kbPower

execute at @e[tag=kbAttacker,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["kbAnchor"]}
execute at @e[tag=kbAnchor,limit=1] run tp @e[tag=kbAnchor,limit=1] ~ ~ ~ facing entity @e[tag=kbTarget,limit=1] eyes
data modify entity @e[tag=kbAnchor,limit=1] Rotation[1] set value 0f
execute at @e[tag=kbAnchor,limit=1] run summon minecraft:marker ^ ^ ^1 {Tags:["kbFront"]}

execute store result score #ax temp run data get entity @e[tag=kbAnchor,limit=1] Pos[0] 1000
execute store result score #az temp run data get entity @e[tag=kbAnchor,limit=1] Pos[2] 1000
execute store result score #fx temp run data get entity @e[tag=kbFront,limit=1] Pos[0] 1000
execute store result score #fz temp run data get entity @e[tag=kbFront,limit=1] Pos[2] 1000

scoreboard players operation #dx temp = #fx temp
scoreboard players operation #dx temp -= #ax temp
scoreboard players operation #dz temp = #fz temp
scoreboard players operation #dz temp -= #az temp

#tellraw @a[tag=kbAttacker,limit=1] [{"text":"[KBデバッグ] dx*1000=","color":"yellow"},{"score":{"name":"#dx","objective":"temp"}},{"text":" dz*1000="},{"score":{"name":"#dz","objective":"temp"}},{"text":" power="},{"score":{"name":"#kbPower","objective":"temp"}}]

scoreboard players operation #dx temp *= #kbPower temp
scoreboard players operation #dz temp *= #kbPower temp

data modify storage neofunction:tamer temp.kb set value [0.0d,0.4d,0.0d]
execute store result storage neofunction:tamer temp.kb[0] double 0.0001 run scoreboard players get #dx temp
execute store result storage neofunction:tamer temp.kb[2] double 0.0001 run scoreboard players get #dz temp
data modify entity @s Motion set from storage neofunction:tamer temp.kb

kill @e[tag=kbAnchor]
kill @e[tag=kbFront]
tag @s remove kbTarget