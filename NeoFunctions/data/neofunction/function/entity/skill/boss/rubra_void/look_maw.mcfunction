# 命名：look_maw
# 説明：【追加：2026-10-13 ルブラ編】第 3 形態の見た目：上あご・下あご（黒い板）、牙（泣く黒曜石）、中の赤い星
# 実行条件：実行位置 顎の真ん中
# >/function neofunction:entity/skill/boss/rubra_void/form3_start
# >/function neofunction:entity/skill/boss/rubra_void/ctl_tick
# =/function neofunction:entity/skill/boss/rubra_void/look_maw

# 内容
summon block_display ~ ~2 ~ {Tags:["check","rubra_fin","rubra_void_part","rubra_maw_up"],block_state:{id:"minecraft:black_concrete"},teleport_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-8f,0f,-8f],scale:[16f,3f,16f]},view_range:6.0f}
summon block_display ~ ~-2 ~ {Tags:["check","rubra_fin","rubra_void_part","rubra_maw_down"],block_state:{id:"minecraft:black_concrete"},teleport_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-8f,-3f,-8f],scale:[16f,3f,16f]},view_range:6.0f}
summon block_display ~ ~2 ~ {Tags:["check","rubra_fin","rubra_void_part","rubra_maw_up"],block_state:{id:"minecraft:crying_obsidian"},teleport_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7f,-1.5f,-7f],scale:[14f,1.5f,14f]},view_range:6.0f}
summon block_display ~ ~-2 ~ {Tags:["check","rubra_fin","rubra_void_part","rubra_maw_down"],block_state:{id:"minecraft:crying_obsidian"},teleport_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-7f,0f,-7f],scale:[14f,1.5f,14f]},view_range:6.0f}
summon block_display ~ ~ ~ {Tags:["check","rubra_fin","rubra_void_part","rubra_void_star"],block_state:{id:"minecraft:shroomlight"},brightness:{block:15,sky:15},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]},view_range:6.0f}
