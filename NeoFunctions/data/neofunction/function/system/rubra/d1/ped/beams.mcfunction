# 命名：beams
# 説明：欠片を置いた台から出る光の筋。当たる扉の色（扉1 赤・扉2 青・扉3 金）で、台の上から扉の真上まで、そこからまっすぐ下へ。外れの向きは灰色で広間の壁へ
# 実行条件：実行者 プレイヤー（四の層）
# >/function neofunction:system/adv/tick/dungeon/rubra1/l4
# =/function neofunction:system/rubra/d1/ped/beams

# 内容
# 北の台 (832, 3259)：1 壁 2 赤 3 青
execute if data storage neofunction:rubra d1.ped{n:1} run function neofunction:system/rubra/d1/ped/beam_wall {px:832.5,pz:3259.5,wx:828.5,wy:17.5,wz:3256.5}
execute if data storage neofunction:rubra d1.ped{n:2} run function neofunction:system/rubra/d1/ped/beam {px:832.5,pz:3259.5,gx:837.5,gz:3266.5,r:1.0,g:0.2,b:0.15}
execute if data storage neofunction:rubra d1.ped{n:3} run function neofunction:system/rubra/d1/ped/beam {px:832.5,pz:3259.5,gx:832.5,gz:3263.5,r:0.3,g:0.5,b:1.0}
# 西の台 (823, 3268)：1 金 2 壁 3 青
execute if data storage neofunction:rubra d1.ped{w:1} run function neofunction:system/rubra/d1/ped/beam {px:823.5,pz:3268.5,gx:827.5,gz:3270.5,r:1.0,g:0.8,b:0.2}
execute if data storage neofunction:rubra d1.ped{w:2} run function neofunction:system/rubra/d1/ped/beam_wall {px:823.5,pz:3268.5,wx:821.5,wy:17.5,wz:3274.5}
execute if data storage neofunction:rubra d1.ped{w:3} run function neofunction:system/rubra/d1/ped/beam {px:823.5,pz:3268.5,gx:832.5,gz:3263.5,r:0.3,g:0.5,b:1.0}
# 南の台 (832, 3277)：1 赤 2 金 3 壁
execute if data storage neofunction:rubra d1.ped{s:1} run function neofunction:system/rubra/d1/ped/beam {px:832.5,pz:3277.5,gx:837.5,gz:3266.5,r:1.0,g:0.2,b:0.15}
execute if data storage neofunction:rubra d1.ped{s:2} run function neofunction:system/rubra/d1/ped/beam {px:832.5,pz:3277.5,gx:827.5,gz:3270.5,r:1.0,g:0.8,b:0.2}
execute if data storage neofunction:rubra d1.ped{s:3} run function neofunction:system/rubra/d1/ped/beam_wall {px:832.5,pz:3277.5,wx:838.5,wy:17.5,wz:3279.5}
# 扉の目印（扉の真上に浮かぶ色の光）
execute in neodimension:ceresta_festa run particle minecraft:dust{color:[1.0,0.2,0.15],scale:1.2} 837.5 13.8 3266.5 0.15 0.15 0.15 0 3 force @a[distance=..40]
execute in neodimension:ceresta_festa run particle minecraft:dust{color:[0.3,0.5,1.0],scale:1.2} 832.5 13.8 3263.5 0.15 0.15 0.15 0 3 force @a[distance=..40]
execute in neodimension:ceresta_festa run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.2} 827.5 13.8 3270.5 0.15 0.15 0.15 0 3 force @a[distance=..40]
