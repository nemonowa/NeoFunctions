# 命名：l1gate_open
# 説明：北の詰所のレバーを引いた：一の層の鉄格子が上がる（一度だけ）
# 実行条件：実行者 プレイヤー（rubra_click の振り分けから）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/world/ceresta/rubra/d1/l1gate_open

# 内容
execute if data storage neofunction:rubra d1{l1gate:1b} run return 0
data modify storage neofunction:rubra d1.l1gate set value 1b
execute in neodimension:ceresta_festa run setblock 860 45 3244 minecraft:lever[face=wall,facing=south,powered=true]
execute in neodimension:ceresta_festa run fill 859 44 3263 859 47 3265 minecraft:air replace minecraft:iron_bars
execute in neodimension:ceresta_festa run playsound minecraft:block.lever.click block @a[distance=..16] 860 45 3244 1 0.6
execute in neodimension:ceresta_festa run playsound minecraft:block.chain.break block @a[distance=..48] 859 45 3264 2 0.5
execute in neodimension:ceresta_festa run playsound minecraft:block.iron_door.open block @a[distance=..48] 859 45 3264 2 0.5
execute in neodimension:ceresta_festa run particle minecraft:block{block_state:"minecraft:iron_bars"} 859.5 45.5 3264.5 0.3 1 1 0 30 normal
tellraw @a[distance=..48] {"text":"どこかで鎖がほどける音がして、坑道の奥の鉄格子が、きしみながら上がっていった。","color":"gray","italic":true}
