# 命名：結界術【剛撃陣】
# 説明：トリガーすると半径6m以内の敵に根っこを植え付けて移動速度をすこし下げる&微継続ダメージ根っこは3秒後に消える
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/54


# 内容：
execute as @e[tag=enemy,distance=..6,limit=3] at @s run summon endermite ~ ~ ~ {Silent:1b,Health:3f,Lifetime:2340,Tags:["aaa"],Passengers:[{id:"minecraft:block_display",Tags:["aa"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{id:"minecraft:dead_bush"}},{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:block",block_state:"minecraft:dead_bush"},Radius:1f,Duration:10,Tags:["aaa"],potion_contents:{custom_color:7880240,custom_effects:[{id:"minecraft:slowness",amplifier:1b,duration:60},{id:"minecraft:wither",amplifier:1b,duration:60}]}}],active_effects:[{id:"minecraft:slowness",amplifier:10b,duration:120},{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:3},{id:"minecraft:attack_damage",base:0}]}


# 演出：
playsound block.cherry_sapling.step record @a[distance=..16] ~ ~ ~ 2 0.5 0.01
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force


# 消費SP
scoreboard players remove @s SP 20

