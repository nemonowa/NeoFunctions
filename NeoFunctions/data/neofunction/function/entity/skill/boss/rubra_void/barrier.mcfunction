# 命名：barrier
# 説明：星読みの結界（セレンを守り石だけで救い、セレンの信頼が 1 以上のとき）：近くの人に耐性と再生を少しのあいだ
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/barrier

# 内容
scoreboard players set #rv_s temp 0
execute store result score #rv_s temp run data get storage neofunction:rubra trust.selen
execute unless score #rv_s temp matches 1.. run return 0
effect give @a[distance=..128,gamemode=!spectator] minecraft:resistance 6 0 true
effect give @a[distance=..128,gamemode=!spectator] minecraft:regeneration 5 1 true
execute as @a[distance=..128,gamemode=!spectator] at @s run particle minecraft:end_rod ~ ~1 ~ 0.6 1 0.6 0.02 20 normal
tellraw @a[distance=..128] [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「星読みの結界……！ 少しだけ、もたせる！」"}]
