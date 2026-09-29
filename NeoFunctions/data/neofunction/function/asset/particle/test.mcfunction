# 命名：test
# 説明：/execute at @s positioned ~ ~1.2 ~ run function neofunction:asset/particle/test
# 説明：~を~に置換
# 説明：左端
# >
# =/function neofunction:asset/particle/test
summon minecraft:block_display ^-2.5 ^ ^1.2 {block_state:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.05f,0.6f,1.2f],left_rotation:[0f, -0.5f, 0f, 0.86f]},brightness:{sky:15,block:15},life:6}

# 左中
summon minecraft:block_display ^-1.5 ^ ^1.8 {block_state:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.05f,0.6f,1.4f],left_rotation:[0f, -0.25f, 0f, 0.97f]},brightness:{sky:15,block:15},life:6}

# 中央
summon minecraft:block_display ^0 ^ ^2.2 {block_state:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.05f,0.6f,1.6f],left_rotation:[0f, 0f, 0f, 1f]},brightness:{sky:15,block:15},life:6}

# 右中
summon minecraft:block_display ^1.5 ^ ^1.8 {block_state:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.05f,0.6f,1.4f],left_rotation:[0f, 0.25f, 0f, 0.97f]},brightness:{sky:15,block:15},life:6}

# 右端
summon minecraft:block_display ^2.5 ^ ^1.2 {block_state:{id:"minecraft:black_stained_glass"},transformation:{scale:[0.05f,0.6f,1.2f],left_rotation:[0f, 0.5f, 0f, 0.86f]},brightness:{sky:15,block:15},life:6}



summon block_display ~ ~ ~ {block_state:{id:"minecraft:white_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[5f,0.1f,5f]}}
data merge entity @e[type=block_display,sort=nearest,limit=1] {start_interpolation:0,interpolation_duration:20,transformation:{scale:[1f,0.1f,1f]}}