# 命名：regrow
# 説明：星核の欠片を 4 つ生やす（守りの形）。前の欠片は消す。戦いの始まり（spawn）と、気絶が明けたとき（stun_end）
# 実行条件：実行位置 本体の 1 マス上（向きの印の所。欠片は frags で印のまわりを回る）
# >/function neofunction:entity/skill/boss/rubra_cradle/spawn
# >/function neofunction:entity/skill/boss/rubra_cradle/stun_end
# =/function neofunction:entity/skill/boss/rubra_cradle/regrow

# 内容
kill @e[tag=rubra_frag]
kill @e[tag=rubra_fraghit]
summon item_display ~ ~ ~ {Tags:["rubra_cradle_part","rubra_frag","rubra_frag1","rubra_d3"],item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":{floats:[1904.0f]},"minecraft:enchantment_glint_override":true}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16729156,teleport_duration:1,billboard:"center"}
summon interaction ~ ~ ~ {Tags:["rubra_cradle_part","rubra_click","rubra_fraghit","rubra_fraghit1","rubra_d3"],width:1.1f,height:1.1f,response:1b}
summon item_display ~ ~ ~ {Tags:["rubra_cradle_part","rubra_frag","rubra_frag2","rubra_d3"],item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":{floats:[1904.0f]},"minecraft:enchantment_glint_override":true}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16729156,teleport_duration:1,billboard:"center"}
summon interaction ~ ~ ~ {Tags:["rubra_cradle_part","rubra_click","rubra_fraghit","rubra_fraghit2","rubra_d3"],width:1.1f,height:1.1f,response:1b}
summon item_display ~ ~ ~ {Tags:["rubra_cradle_part","rubra_frag","rubra_frag3","rubra_d3"],item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":{floats:[1904.0f]},"minecraft:enchantment_glint_override":true}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16729156,teleport_duration:1,billboard:"center"}
summon interaction ~ ~ ~ {Tags:["rubra_cradle_part","rubra_click","rubra_fraghit","rubra_fraghit3","rubra_d3"],width:1.1f,height:1.1f,response:1b}
summon item_display ~ ~ ~ {Tags:["rubra_cradle_part","rubra_frag","rubra_frag4","rubra_d3"],item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":{floats:[1904.0f]},"minecraft:enchantment_glint_override":true}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16729156,teleport_duration:1,billboard:"center"}
summon interaction ~ ~ ~ {Tags:["rubra_cradle_part","rubra_click","rubra_fraghit","rubra_fraghit4","rubra_d3"],width:1.1f,height:1.1f,response:1b}
data modify storage neofunction:rubra cradle.left set value 4
particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.6} ~ ~ ~ 1.5 1 1.5 0 60 normal
playsound minecraft:block.amethyst_cluster.place hostile @a[distance=..40] ~ ~ ~ 1.5 0.6
