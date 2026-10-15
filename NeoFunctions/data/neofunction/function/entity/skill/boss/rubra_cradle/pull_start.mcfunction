# 命名：pull_start
# 説明：欠片を右クリック：守り石（1917）を手に持っていれば、その欠片の引き剥がしを始める（同時に 1 つまで）
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:entity/skill/boss/rubra_cradle/pull_start

# 内容
execute unless data storage neofunction:rubra cradle{state:"fight"} run return 0
execute unless items entity @s weapon.mainhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return run title @s actionbar {"text":"欠片は、セレンの体に食いこんでいる。……守り石なら、傷つけずに抜けるかもしれない","color":"#A8D8FF"}
execute unless data storage neofunction:rubra cradle.pull{i:0} run return run title @s actionbar {"text":"いまは、ほかの欠片を引き剥がしている","color":"gray"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit1] run data modify storage neofunction:rubra cradle.pull set value {i:1,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit2] run data modify storage neofunction:rubra cradle.pull set value {i:2,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit3] run data modify storage neofunction:rubra cradle.pull set value {i:3,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit4] run data modify storage neofunction:rubra cradle.pull set value {i:4,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit5] run data modify storage neofunction:rubra cradle.pull set value {i:5,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit6] run data modify storage neofunction:rubra cradle.pull set value {i:6,t:0}
tag @a remove rubra_puller
tag @s add rubra_puller
playsound minecraft:block.beacon.ambient player @a[distance=..16] ~ ~ ~ 1 1.6
title @s actionbar {"text":"守り石が青く光る……そばを離れず、攻撃を受けないように","color":"#A8D8FF"}
