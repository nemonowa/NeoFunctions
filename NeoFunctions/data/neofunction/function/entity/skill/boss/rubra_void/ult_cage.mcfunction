# 命名：ult_cage
# 説明：檻：舞台の上にいる人それぞれの足もとを、半径 3.5 の 8 つの黒星で囲む（約 1 秒で着弾）。少し遅れて（約 1.7 秒）真ん中にも 1 つ。輪が落ちる前に抜け出さないと挟まれる
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_cage

# 内容
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 0 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 45 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 90 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 135 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 180 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 225 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 270 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 212 ~ rotated 315 0 positioned ^ ^ ^3.5 run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 216 ~ run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s run playsound minecraft:block.iron_door.close hostile @s ~ ~ ~ 2 0.5
