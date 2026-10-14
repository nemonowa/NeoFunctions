# 命名：ult_big
# 説明：【追加：2026-10-13 ルブラ編】巨大な黒星：ボスと同じくらいの黒星を、舞台の真ん中へ落とす（0.6 マスずつ。足もとに半径 9 の赤い輪の予告）
# 実行条件：実行者・実行位置 本体（30 マス上）
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_big

# 内容
summon block_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_bstar_big"],block_state:{id:"minecraft:black_concrete"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0.38f,0.2f,0.1f,0.9f],right_rotation:[0f,0f,0f,1f],translation:[-4.5f,-4.5f,-4.5f],scale:[9f,9f,9f]},view_range:8.0f}
summon block_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_bstar_big"],block_state:{id:"minecraft:crying_obsidian"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0.38f,0f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[-3.5f,-3.5f,-3.5f],scale:[7f,7f,7f]},view_range:8.0f}
playsound minecraft:entity.wither.shoot hostile @a[distance=..200] ~ ~ ~ 4 0.3
