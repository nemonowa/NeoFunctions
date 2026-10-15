# 命名：boss
# 説明：このバイオームに入った時の処理
# >
# =/function neofunction:system/adv/location/biome_change/cerestafesta/boss

# 終章のボスの舞台「星還りの空」（街の真上 921, 199, 3282 のまわり）だけは、下の強制停止を通さず、町と同じフェードアウト付きの切り替えにする（街の Harvest3 → Dramatic5）
execute if entity @s[x=861,y=150,z=3222,dx=120,dy=110,dz=120] if score @s MusicTimer matches -2147483648..2147483647 run tag @s add MusicStop
execute if entity @s[x=861,y=150,z=3222,dx=120,dy=110,dz=120] run function neofunction:system/music/dramatic5/change_to_this
execute if entity @s[x=861,y=150,z=3222,dx=120,dy=110,dz=120] run return run function neofunction:system/adv/location/biome_change/remove_advancement

# ボスBGMはフェードアウトを無視して強制的に
function neofunction:system/music/finish
execute if entity @s[x=230,y=-64,z=880,dx=300,dy=512,dz=400] run function neofunction:system/music/valiant/change_to_this
execute if entity @s[x=980,y=-64,z=1720,dx=100,dy=512,dz=100] run function neofunction:system/music/sieraboss/change_to_this
execute if entity @s[x=610,y=-64,z=2100,dx=90,dy=512,dz=80] run function neofunction:system/music/epicbattle/change_to_this
execute if entity @s[x=500,y=-64,z=1300,dx=100,dy=512,dz=200] run function neofunction:system/music/stained_glass_shining_in_the_dark_night/change_to_this
execute if entity @s[x=150,y=-25,z=1935,dx=170,dy=512,dz=65] run function neofunction:system/music/katabasis/change_to_this



function neofunction:system/adv/location/biome_change/remove_advancement