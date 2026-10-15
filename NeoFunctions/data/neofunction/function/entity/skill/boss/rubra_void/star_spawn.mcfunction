# 命名：star_spawn
# 説明：小さな黒星を 1 つ出す（今の所。高さで落ちる時間がずれる）
# 実行条件：実行位置 出す所（舞台の上の空）
# >/function neofunction:entity/skill/boss/rubra_void/ult_x
# >/function neofunction:entity/skill/boss/rubra_void/ult_plus
# >/function neofunction:entity/skill/boss/rubra_void/ult_eight
# >/function neofunction:entity/skill/boss/rubra_void/ult_spiral_r
# >/function neofunction:entity/skill/boss/rubra_void/ult_spiral_l
# >/function neofunction:entity/skill/boss/rubra_void/ult_rain
# =/function neofunction:entity/skill/boss/rubra_void/star_spawn

# 内容
summon block_display ~ ~ ~ {Tags:["check","rubra_fin","rubra_bstar"],block_state:{id:"minecraft:black_concrete"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0.38f,0.2f,0.1f,0.9f],right_rotation:[0f,0f,0f,1f],translation:[-0.9f,-0.9f,-0.9f],scale:[1.8f,1.8f,1.8f]},view_range:6.0f}
