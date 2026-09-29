# 命名：village
# 説明：このバイオームに入った時の処理
# >
# =/function neofunction:system/adv/location/biome_change/cerestafesta/village

execute if score @s MusicTimer matches -2147483648..2147483647 run tag @s add MusicStop
execute if score @s MusicTimer matches -2147483648..2147483647 run function neofunction:system/music/remove_all_change

# 一章からの町のテーマ：ビリーシエラルクス,advancements={neoadvancement:anchor/root/ceresta/120=true}
execute if entity @s[x=800,y=-64,z=930,dx=200,dy=512,dz=220] run function neofunction:system/music/city_billy/change_to_this
execute if entity @s[x=750,y=-64,z=1540,dx=300,dy=512,dz=200] run function neofunction:system/music/pastorale3/change_to_this
execute if entity @s[x=400,y=-64,z=2000,dx=600,dy=512,dz=500] run function neofunction:system/music/city_luxefa/change_to_this

execute if entity @s[x=800,y=-64,z=930,dx=200,dy=512,dz=220] run title @s title {"text": "ビリーの野営地","color": "green","bold": true,"underlined": true}
execute if entity @s[x=800,y=-64,z=930,dx=200,dy=512,dz=220] run title @s subtitle [{"text": "=風来と伝承の難破船入り江= ","color": "dark_aqua"},{"text": "脅威度：✯","color": "dark_red","bold": true}]
execute if entity @s[x=750,y=-64,z=1540,dx=300,dy=512,dz=200] run title @s title {"text": "シェーラの碧天牧場","color": "green","bold": true,"underlined": true}
execute if entity @s[x=750,y=-64,z=1540,dx=300,dy=512,dz=200] run title @s subtitle [{"text": "=牧歌と試練の碧天牧場= ","color": "aqua"},{"text": "脅威度：✯✯","color": "dark_red","bold": true}]
execute if entity @s[x=400,y=-64,z=2000,dx=600,dy=512,dz=500] run title @s title {"text": "ルクス・イーファ","color": "green","bold": true,"underlined": true}
execute if entity @s[x=400,y=-64,z=2000,dx=600,dy=512,dz=500] run title @s subtitle [{"text": "=祝祭と豊穣の黄金穀倉= ","color": "gold","bold": false},{"text": "脅威度：✯✯✯","color": "dark_red","bold": true}]

function neofunction:system/adv/location/biome_change/remove_advancement
