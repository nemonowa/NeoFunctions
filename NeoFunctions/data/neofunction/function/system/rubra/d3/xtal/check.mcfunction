# 命名：check
# 説明：結晶の封（守り石で引き剥がす練習。1 浮遊の間の出口、2 闇の間の出口、3 球の広間の手前の部屋で回る結晶）を、近づいたときに置く。近くに結晶があれば毎 tick の処理（loop）を回す
# 実行条件：実行者 プレイヤー（零の揺籃の中、1 秒ごと）
# >/function neofunction:system/adv/tick/dungeon/rubra3
# =/function neofunction:system/rubra/d3/xtal/check

# 内容
execute unless data storage neofunction:rubra d3.xt{p1:1b} positioned 936 27 3296 if entity @s[distance=..24] run function neofunction:system/rubra/d3/xtal/place {i:1,mx:936.5,my:27,mz:3296.5,dx:935.6,dy:27.5,dz:3296.5,iy:26.95}
execute unless data storage neofunction:rubra d3.xt{p2:1b} positioned 970 23 3296 if entity @s[distance=..24] run function neofunction:system/rubra/d3/xtal/place {i:2,mx:970.5,my:23,mz:3296.5,dx:969.6,dy:23.5,dz:3296.5,iy:22.95}
execute unless data storage neofunction:rubra d3.xt{p3:1b} positioned 975 -43 3296 if entity @s[distance=..24] run function neofunction:system/rubra/d3/xtal/place {i:3,mx:971.5,my:-43,mz:3296.5,dx:977.7,dy:-42.5,dz:3296.5,iy:-43.05}
execute if entity @e[type=marker,tag=rubra_xseal,distance=..12] run schedule function neofunction:system/rubra/d3/xtal/loop 1t replace
