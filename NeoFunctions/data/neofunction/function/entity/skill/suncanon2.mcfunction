# 命名：suncanon2
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/suncanon2

execute as @e[tag=NowSunCanon] at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.8 0.6
execute as @e[tag=NowSunCanon] at @s facing entity @p[predicate=neofunction:player] eyes positioned ^ ^2 ^2 rotated ~ ~90 run function neofunction:asset/particle/star/wax_on3m
execute as @e[tag=NowSunCanon] at @s positioned ^ ^2 ^1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["suncanon"],CustomName:{"text":"灼陽砲","color":"gold","bold":true,"italic":false}}
execute as @e[tag=suncanon,tag=!direction] at @s facing entity @p[predicate=neofunction:player] eyes run tp @s ~ ~ ~ ~ ~
tag @e[tag=suncanon,tag=!direction] add direction

execute as @e[tag=suncanon] at @s run function neofunction:entity/skill/suncanon3

execute as @e[tag=NowSunCanon] at @s run tag @s remove NowSunCanon