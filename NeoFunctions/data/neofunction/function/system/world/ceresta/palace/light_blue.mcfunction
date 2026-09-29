# 命名：light_blue
# 説明：（説明未記載）
# >/world
# =/function neofunction:system/world/ceresta/palace/light_blue

title @a times 5 50 15
title @a subtitle [{"text":"─── ","color":"gray","italic":true},{"text":"四元素の調べ","color":"#42B399","bold":true,"italic":true},{"text":"が、大地に響きわたる ───","color":"#9AD9CB","italic":true}]
title @a title {"text":"セレスティアルクリスタルを捧げた！","color":"#42B399","bold":true,"italic":false,"underlined":true}
title @a actionbar {"text":"✦ 精霊の調和 ✦","color":"#42B399","bold":true}

execute as @a at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.6
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.6 1.3
execute as @a at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.5 1.5

execute as @a at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.6 1 0.6 0.35 100
execute as @a at @s run particle minecraft:end_rod ~ ~ ~ 0.4 0.2 0.4 0.03 60
execute as @a at @s run particle minecraft:dust{color:[0.26,0.7,0.6],scale:1.4} ~ ~1 ~ 0.6 1 0.6 0 80 force
execute as @a at @s run particle minecraft:cloud ~ ~0.1 ~ 0.8 0.1 0.8 0.02 40

summon firework_rocket ~ ~1 ~ {LifeTime:8,ShotAtAngle:1b,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;3751347],fade_colors:[I;16777215],has_trail:true,has_twinkle:true}]}}}}
summon firework_rocket ~0.6 ~1 ~0.4 {LifeTime:14,ShotAtAngle:1b,Motion:[0.1,0.7,0.1],FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;3751347],has_trail:false,has_twinkle:true},{shape:"small_ball",colors:[I;16777215],has_trail:true,has_twinkle:true}]}}}}
summon firework_rocket ~-0.6 ~1 ~-0.4 {LifeTime:20,ShotAtAngle:1b,Motion:[-0.1,0.8,-0.1],FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",colors:[I;3751347,16777215],has_trail:true,has_twinkle:false}]}}}}

summon item_display 1598 231.5 3141 {Glowing:1b,Tags:["fly2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:redstone_block",count:1,components:{"minecraft:custom_name":{"text":"minecraft:item/3d/105","color":"yellow","italic":false},"minecraft:custom_model_data":{floats:[1005.0f]}}}}
