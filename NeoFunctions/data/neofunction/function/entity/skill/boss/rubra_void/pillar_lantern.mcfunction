# 命名：pillar_lantern
# 説明：灯籠の支え：街の広場から灯籠の光が光の柱になって昇り、消えた星灯の柱を 1 本灯す
# 実行条件：実行者・実行位置 柱の目印
# >/function neofunction:entity/skill/boss/rubra_void/pillars
# =/function neofunction:entity/skill/boss/rubra_void/pillar_lantern

# 内容
setblock ~ ~ ~ minecraft:sea_lantern
particle minecraft:end_rod ~ ~-80 ~ 0.4 80 0.4 0 600 force @a[distance=..200]
particle minecraft:flame ~ ~-80 ~ 0.6 80 0.6 0.01 400 force @a[distance=..200]
particle minecraft:flash{color:[1.0,0.7,0.3,1.0]} ~ ~ ~ 0 0 0 0 2 force @a[distance=..200]
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.4 200 force @a[distance=..200]
particle minecraft:dust{color:[1.0,0.65,0.3],scale:3.0} ~ ~ ~ 2 2 2 0 120 force @a[distance=..200]
playsound minecraft:entity.firework_rocket.large_blast block @a[distance=..200] ~ ~ ~ 3 0.8
playsound minecraft:block.beacon.power_select block @a[distance=..200] ~ ~ ~ 3 1.2
title @a[distance=..200] actionbar {"text":"――広場の灯籠の光が、空まで届いた！","color":"#FFB070","bold":true}
tellraw @a[distance=..200] {"text":"眼下の広場で、街じゅうの人々が灯籠を掲げている。橙色の光がひとすじの柱になって夜空を昇り、星灯の柱に灯をともした。","color":"#FFB070","italic":true}
