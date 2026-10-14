# 命名：place
# 説明：【追加：2026-10-14 ルブラ編】結晶の封 i を置く：封の目印（marker）と、通路をふさぐ赤いガラス（3×3）、結晶（item_display、セレンの欠片と同じ見た目）と当たり判定。もう抜いたあとなら、目印だけ置いて封を開けておく。3 は回すための向きの印も置く
# 実行条件：引数 i・mx my mz（封の真ん中）・dx dy dz（結晶）・iy（当たり判定の下の高さ）
# >/function neofunction:system/rubra/d3/xtal/check
# =/function neofunction:system/rubra/d3/xtal/place

# 内容
$data modify storage neofunction:rubra d3.xt.p$(i) set value 1b
$kill @e[tag=rubra_xtal_$(i)]
$summon marker $(mx) $(my) $(mz) {Tags:["rubra_d3","rubra_xseal","rubra_xtal_$(i)"]}
$execute if data storage neofunction:rubra d3.xt{s$(i):1b} positioned $(mx) $(my) $(mz) run return run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:red_stained_glass
$execute positioned $(mx) $(my) $(mz) run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:red_stained_glass replace minecraft:air
$summon item_display $(dx) $(dy) $(dz) {Tags:["rubra_d3","rubra_xtal","rubra_xtal_$(i)"],item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":{floats:[1904.0f]},"minecraft:enchantment_glint_override":true}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16729156,teleport_duration:1,billboard:"center"}
$summon interaction $(dx) $(iy) $(dz) {Tags:["rubra_click","rubra_d3","rubra_xtalhit","rubra_xtal_$(i)"],width:1.1f,height:1.1f,response:1b}
$scoreboard players set #xt_i temp $(i)
execute if score #xt_i temp matches 3 run summon marker 975.5 -43 3296.5 {Tags:["rubra_d3","rubra_xrot","rubra_xtal_3"]}
