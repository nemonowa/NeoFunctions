# 命名：plug
# 説明：三つの水門の間の真ん中の穴に、水路の栓（1916）をはめる：漏れていた水が止まり、合わせての量が 3 つぶんになる
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/world/ceresta/rubra/d2/water/plug

# 内容
execute if data storage neofunction:rubra d2{plug:1b} run return run tellraw @s {"text":"穴には、青銅の栓がしっかりとはまっている。","color":"gray","italic":true}
execute unless items entity @s weapon.mainhand minecraft:copper_ingot[minecraft:custom_model_data={floats:[1916.0f]}] run return run tellraw @s {"text":"床の真ん中に穴が開いていて、水がわずかに漏れ出している。何かでふさげそうだ。","color":"gray","italic":true}
item modify entity @s weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}
data modify storage neofunction:rubra d2.plug set value 1b
data modify storage neofunction:rubra d2.total set value 3
execute as @e[type=interaction,tag=rubra_plug] at @s run summon item_display ~ ~0.3 ~ {Tags:["rubra_d2"],item:{id:"minecraft:copper_ingot",count:1,components:{"minecraft:custom_model_data":{floats:[1916.0f]}}},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
playsound minecraft:block.copper.place block @a[distance=..24] ~ ~ ~ 1 0.8
playsound minecraft:block.bubble_column.upwards_ambient block @a[distance=..24] ~ ~ ~ 1 1
tellraw @a[distance=..32] {"text":"栓をはめると、漏れていた水が止まった。真ん中の溜めに、水が 1 つぶん増えた。（合わせて 3 つぶん）","color":"#7FD8FF","italic":true}
function neofunction:system/world/ceresta/rubra/d2/water/apply
function neofunction:system/world/ceresta/rubra/d2/water/say
