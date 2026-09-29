# 命名：238
# 説明：地獄門【ゲヘナ・ゲート】
# >
# =/function neofunction:asset/skill/238

# 内容
# 使い魔をまとめて召喚し、周囲の敵を囲んで攪乱する（基本8体、Lv30から10レベル毎に+2体、Lv90以降で最大20体）。
# 各体は狼/スノーゴーレム/アイアンゴーレムから均等抽選（tamer/gehenna_spawn_one）。

data modify storage neofunction:tamer temp.caller set from entity @s UUID

# 持続時間はレベル依存、習得Lv30を基準に、5レベル毎に+5秒
scoreboard players operation #gehennaDur temp = @s LVL
scoreboard players remove #gehennaDur temp 30
scoreboard players set #gehennaDiv temp 5
scoreboard players operation #gehennaDur temp /= #gehennaDiv temp
scoreboard players operation #gehennaDur temp *= #gehennaDiv temp
scoreboard players add #gehennaDur temp 30
scoreboard players set #gehennaTickMul temp 20
scoreboard players operation #gehennaDur temp *= #gehennaTickMul temp

execute positioned ~3 ~ ~ run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~-3 ~ ~ run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~ ~ ~3 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~ ~ ~-3 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~2 ~ ~2 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~2 ~ ~-2 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~-2 ~ ~2 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute positioned ~-2 ~ ~-2 run function neofunction:asset/skill/tamer/gehenna_spawn_one

# 【追加：2026-09-12 召喚数をレベル依存に変更。習得Lv30を基準に、10レベル毎に+2体（外周に追加配置）】
execute if score @s LVL matches 40.. positioned ~5 ~ ~ run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 40.. positioned ~-5 ~ ~ run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 50.. positioned ~ ~ ~5 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 50.. positioned ~ ~ ~-5 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 60.. positioned ~4 ~ ~4 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 60.. positioned ~4 ~ ~-4 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 70.. positioned ~-4 ~ ~4 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 70.. positioned ~-4 ~ ~-4 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 80.. positioned ~6 ~ ~2 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 80.. positioned ~-6 ~ ~2 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 90.. positioned ~2 ~ ~6 run function neofunction:asset/skill/tamer/gehenna_spawn_one
execute if score @s LVL matches 90.. positioned ~-2 ~ ~-6 run function neofunction:asset/skill/tamer/gehenna_spawn_one

execute as @e[tag=ownerPending238] run data modify entity @s Owner set from storage neofunction:tamer temp.caller
execute as @e[tag=ownerPending238] store result entity @s PortalCooldown int 1 run scoreboard players get #gehennaDur temp
tag @e[tag=ownerPending238] remove ownerPending238

# 演出
playsound block.portal.trigger record @a[distance=..16] ~ ~ ~ 1.0 0.5
particle minecraft:soul ~ ~1 ~ 1 1 1 0.05 100 force

# SP消費：50SP消費
scoreboard players remove @s SP 50
