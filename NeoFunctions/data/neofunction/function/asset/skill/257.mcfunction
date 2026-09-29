# 命名：257
# 説明：影杭【シャドウ・ピラー】
#        リワーク：設置した瞬間、周辺8m以内の敵にまとめて呪印を付与する
#        （254・259の下準備に使う）
# >スキル発動時
# =/function neofunction:asset/skill/257


# 内容
tag @s add 257

summon endermite ~ ~ ~ {Silent:1b,Team:"white",NoAI:1b,Lifetime:1200,Tags:["check","skill257"],Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,4.75f,-0.25f],scale:[0.5f,1f,0.5f]},block_state:{id:"minecraft:crying_obsidian"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,3.75f,-0.25f],scale:[0.5f,1f,0.5f]},block_state:{id:"minecraft:crying_obsidian"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,2.75f,-0.25f],scale:[0.5f,1f,0.5f]},block_state:{id:"minecraft:crying_obsidian"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,1.75f,-0.25f],scale:[0.5f,1f,0.5f]},block_state:{id:"minecraft:crying_obsidian"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0.75f,-0.25f],scale:[0.5f,1f,0.5f]},block_state:{id:"minecraft:crying_obsidian"}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,1f,0.5f]},block_state:{id:"minecraft:crying_obsidian"}}],active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:0},{id:"minecraft:attack_damage",base:0}]}

# リワーク：設置時に周辺8m以内の敵へ呪印を付与
execute as @e[tag=enemy,distance=..8] run function neofunction:asset/skill/mark_apply

# 演出
schedule function neofunction:asset/skill/257/1 1t append
schedule function neofunction:asset/skill/257/2 5t append
schedule function neofunction:asset/skill/257/3 10t append
schedule function neofunction:asset/skill/257/4 15t append
schedule function neofunction:asset/skill/257/5 20t append

# SP消費：40SP消費
scoreboard players remove @s SP 40

# 自己ループ
function neofunction:asset/skill/257-1

# クールタイム
# scoreboard players add @s CT 2
