# 命名：place
# 説明：台に星核の欠片を置く（手に持った欠片を 1 つ使う）
# 実行条件：実行者 プレイヤー。引数 p
# >/function neofunction:system/rubra/d1/ped/click
# =/function neofunction:system/rubra/d1/ped/place

# 内容
execute unless items entity @s weapon.mainhand minecraft:red_dye[minecraft:custom_model_data={floats:[1904.0f]}] run return run tellraw @s {"text":"台の窪みは、何かを置く形をしている。（星核の欠片を手に持って右クリック）","color":"gray","italic":true}
item modify entity @s weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}
$data modify storage neofunction:rubra d1.ped.$(p) set value 1
$execute as @e[type=item_display,tag=rubra_ped_disp_$(p)] run data merge entity @s {item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":{floats:[1904.0f]},"minecraft:enchantment_glint_override":true}}}
$execute as @e[type=item_display,tag=rubra_ped_disp_$(p)] at @s run particle minecraft:end_rod ~ ~ ~ 0.2 0.3 0.2 0.02 12 normal
playsound minecraft:block.amethyst_block.place block @a[distance=..16] ~ ~ ~ 1 0.8
function neofunction:system/rubra/d1/ped/apply
