# 命名：despawn
# 説明：【追加：2026-10-09 ルブラ編】近くに誰もいなくなった（全滅・離脱）：番人と像を片付け、床の黒い水を消して、進み具合を 426 に戻す。次に番人の間へ来たら、すぐ戦いをやり直す
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/tick
# =/function neofunction:entity/skill/boss/rubra_keeper/despawn

# 内容
data modify storage neofunction:rubra keeper.state set value "dead"
fill ~-22 ~ ~-22 ~22 ~2 ~22 minecraft:air replace minecraft:black_carpet
kill @e[tag=rubra_keeper_part]
execute as @e[type=drowned,tag=rubra_drip,distance=..32] run tag @s add del
# 【変更：2026-10-14】入口の膜を消し、ミラを戻す
execute in neodimension:ceresta_festa run fill 970 40 3138 970 43 3141 minecraft:air replace minecraft:black_stained_glass
execute as @e[type=marker,tag=rubra_mira_w3,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tag @s add del
execute if score #temp main_story matches 427 run scoreboard players set #temp main_story 426
data modify storage neofunction:rubra d2.kretry set value 1b
