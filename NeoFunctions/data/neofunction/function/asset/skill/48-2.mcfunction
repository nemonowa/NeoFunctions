# 命名：明けの明星【ルシファー】
# 説明：天より九つの裁きの流星を堕とす。SP100消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/48-2



# 内容：範囲
execute as @a[tag=skill48] at @s run tellraw @a[distance=..64] [{"text":"<","bold":false,"italic":false},{"selector":"@s","color":"white"},{"text":"> "},{"text":"「"},{"text":"暗黒","color":"dark_blue","bold":true},{"text":"を穿て.......」"}]

execute as @e[type=fireball,tag=skill48f] run data merge entity @s {Motion:[0.0,-1.5,0.0]}

execute as @a[tag=skill48] at @s run function neofunction:asset/particle/star/10m

execute as @a[tag=skill48] at @s run playsound minecraft:entity.wither.shoot record @a[distance=..64] ~ ~ ~ 0.3 0.9 0
execute as @a[tag=skill48] at @s run playsound minecraft:entity.wither.death record @a[distance=..64] ~ ~ ~ 0.3 1.5 0

# 跡を濁すな
tag @a remove skill48

