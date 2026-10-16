# 命名：dead
# 説明：番人はただの石の像に戻った：本体を消し（像の表示は残す）、セレンの場面（428）を中心で始める
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/dying
# =/function neofunction:entity/skill/boss/rubra_keeper/dead

# 内容
data modify storage neofunction:rubra keeper.state set value "dead"
data merge entity @s {Invulnerable:0b}
tag @s add del
# 入口の膜を消し、ミラが戻ってくる。黒い滴りも消える
execute in neodimension:ceresta_festa run fill 970 40 3138 970 43 3141 minecraft:air replace minecraft:black_stained_glass
execute as @e[type=marker,tag=rubra_mira_w3,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
execute as @e[type=drowned,tag=rubra_drip,distance=..40] run tag @s add del
# 報酬（宝箱・帰還ゲート）を出す
function neofunction:system/world/ceresta/rubra/d2/reward_build
function neofunction:system/adv/tick/quest/40/d2/428
