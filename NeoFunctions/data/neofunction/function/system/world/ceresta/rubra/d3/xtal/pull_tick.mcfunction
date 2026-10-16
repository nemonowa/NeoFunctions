# 命名：pull_tick
# 説明：引き剥がし中（毎 tick）：結晶から 4 マス以内で、攻撃を受けておらず、守り石を手に持っていれば進む。かかる時間はセレン戦と同じ 60 tick（trust.selen が 1 以上なら 40 tick）
# 実行条件：実行者・実行位置 引き剥がしている人（タグ rubra_xpuller）
# >/function neofunction:system/world/ceresta/rubra/d3/xtal/loop
# =/function neofunction:system/world/ceresta/rubra/d3/xtal/pull_tick

# 内容
execute unless items entity @s weapon.mainhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return run function neofunction:system/world/ceresta/rubra/d3/xtal/cancel
execute unless data entity @s {HurtTime:0s} run return run function neofunction:system/world/ceresta/rubra/d3/xtal/cancel
scoreboard players set #xt_near temp 0
function neofunction:system/world/ceresta/rubra/d3/xtal/pull_near with storage neofunction:rubra d3.xt.pull
execute if score #xt_near temp matches 0 run return run function neofunction:system/world/ceresta/rubra/d3/xtal/cancel
execute store result score #xt_p temp run data get storage neofunction:rubra d3.xt.pull.t
scoreboard players add #xt_p temp 1
execute store result storage neofunction:rubra d3.xt.pull.t int 1 run scoreboard players get #xt_p temp
scoreboard players set #xt_need temp 60
execute if data storage neofunction:rubra trust{selen:1} run scoreboard players set #xt_need temp 40
execute if data storage neofunction:rubra trust{selen:2} run scoreboard players set #xt_need temp 40
title @s actionbar [{"text":"引き剥がしている…… ","color":"#A8D8FF"},{"score":{"name":"#xt_p","objective":"temp"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"#xt_need","objective":"temp"},"color":"white"}]
execute if score #xt_p temp >= #xt_need temp run function neofunction:system/world/ceresta/rubra/d3/xtal/done with storage neofunction:rubra d3.xt.pull
