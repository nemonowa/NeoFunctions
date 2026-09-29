# 命名：sunbeam1
# 説明：
# >/function neofunction:entity/skill/boss/larusha/skill 実行者as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] as @s[scores={HP=..200},tag=!ult1] 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/sunbeam1
execute in neodimension:ceresta_festa run tp @s 216.33 -19.00 1966.51 2069.08 -4.59
effect give @s resistance infinite 3
tag @s add nowskilling
me §fは§6§l§n太陽砲§fを準備している。！！
scoreboard players set @s generaltimer 400
bossbar add sunbeam {"text": "太陽砲まで...","bold": true,"color": "white"}
bossbar set sunbeam max 400
bossbar set sunbeam players @a

execute as @e[type=wither_skeleton,tag=larusha] at @s as @a[distance=..64] at @s run playsound entity.wither.ambient master @a ~ ~ ~ 1.0 1.0
execute in neodimension:ceresta_festa positioned 243 -19 1981 run function neofunction:asset/summon/783
execute in neodimension:ceresta_festa positioned 232 -19 1981 run function neofunction:asset/summon/783
execute in neodimension:ceresta_festa positioned 221 -19 1981 run function neofunction:asset/summon/783
execute as @e[tag=sungolem] at @s run tp @s ~ ~ ~ 180 ~
execute in neodimension:ceresta_festa positioned 243 -19 1951 run function neofunction:asset/summon/783
execute in neodimension:ceresta_festa positioned 232 -19 1951 run function neofunction:asset/summon/783
execute in neodimension:ceresta_festa positioned 221 -19 1951 run function neofunction:asset/summon/783

execute as @e[tag=sungolem] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

schedule function neofunction:entity/skill/boss/larusha/sunbeam2 1s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 2s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 3s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 4s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 5s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 6s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 7s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 8s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 9s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 10s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 11s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 12s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 13s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 14s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 15s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 16s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 17s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 18s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam2 19s append
schedule function neofunction:entity/skill/boss/larusha/sunbeam3 401t append
schedule function neofunction:entity/skill/boss/larusha/sunbeam5 401t append
schedule function neofunction:entity/skill/boss/larusha/sunbeam6 35s append