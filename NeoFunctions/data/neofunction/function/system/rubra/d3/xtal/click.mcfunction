# 命名：click
# 説明：結晶を右クリック：守り石（1917）を手に持っていれば引き剥がしを始める（同時に 1 つ。あとから始めた人が優先）。三つ目は、始めると影が 1 体滲み出す
# 実行条件：実行者 プレイヤー（クリックされた interaction にタグ rubra_clicked）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d3/xtal/click

# 内容
execute unless items entity @s weapon.mainhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return run title @s actionbar {"text":"赤い結晶が、岩に深く食いこんでいる。……守り石を手に持って触れれば、抜けるかもしれない","color":"#A8D8FF"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_xtal_1] run data modify storage neofunction:rubra d3.xt.pull set value {i:1,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_xtal_2] run data modify storage neofunction:rubra d3.xt.pull set value {i:2,t:0}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_xtal_3] run data modify storage neofunction:rubra d3.xt.pull set value {i:3,t:0}
tag @a remove rubra_xpuller
tag @s add rubra_xpuller
playsound minecraft:block.beacon.ambient player @a[distance=..16] ~ ~ ~ 1 1.6
title @s actionbar {"text":"守り石が青く光る……そばを離れず、攻撃を受けないように","color":"#A8D8FF"}
execute if data storage neofunction:rubra d3.xt.pull{i:3} positioned 973.5 -44 3299.5 unless entity @e[type=vex,tag=rubra_shadow,distance=..12] run function neofunction:system/rubra/d3/shadow
schedule function neofunction:system/rubra/d3/xtal/loop 1t replace
