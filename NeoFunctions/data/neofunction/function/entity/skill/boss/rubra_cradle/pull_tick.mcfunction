# 命名：pull_tick
# 説明：引き剥がし中（毎 tick）：引き剥がしている人が欠片から 4 マス以内で、攻撃を受けていなければ進む。かかる時間は 60 tick（trust.selen が 1 以上なら 40 tick）
# 説明：離れたり、攻撃を受けたり（HurtTime）、守り石を手から離したら中断
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_cradle/tick
# =/function neofunction:entity/skill/boss/rubra_cradle/pull_tick

# 内容
execute unless entity @a[tag=rubra_puller] run return run function neofunction:entity/skill/boss/rubra_cradle/pull_cancel
execute as @a[tag=rubra_puller,limit=1] unless items entity @s weapon.mainhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return run function neofunction:entity/skill/boss/rubra_cradle/pull_cancel
execute as @a[tag=rubra_puller,limit=1] unless data entity @s {HurtTime:0s} run return run function neofunction:entity/skill/boss/rubra_cradle/pull_cancel
function neofunction:entity/skill/boss/rubra_cradle/pull_near with storage neofunction:rubra cradle.pull
execute if score #rc_near temp matches 0 run return run function neofunction:entity/skill/boss/rubra_cradle/pull_cancel
execute store result score #rc_p temp run data get storage neofunction:rubra cradle.pull.t
scoreboard players add #rc_p temp 1
execute store result storage neofunction:rubra cradle.pull.t int 1 run scoreboard players get #rc_p temp
scoreboard players set #rc_need temp 60
execute if data storage neofunction:rubra trust{selen:1} run scoreboard players set #rc_need temp 40
execute if data storage neofunction:rubra trust{selen:2} run scoreboard players set #rc_need temp 40
execute as @a[tag=rubra_puller,limit=1] run title @s actionbar [{"text":"引き剥がしている…… ","color":"#A8D8FF"},{"score":{"name":"#rc_p","objective":"temp"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"#rc_need","objective":"temp"},"color":"white"}]
execute if score #rc_p temp >= #rc_need temp run function neofunction:entity/skill/boss/rubra_cradle/extract with storage neofunction:rubra cradle.pull
