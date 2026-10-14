# 命名：l3bridge
# 説明：【追加：2026-10-14 ルブラ編】三の層の裂け目の手前、北の壁のランプ（845, 26, 3283）のボタンを押した：ランプが点き、裂け目（x846〜849）に光の橋が架かる（y24、z3285〜3287）。1.25 秒で消える（l3bridge_tick）。架かっているあいだは押しても何もしない
# 実行条件：実行者 プレイヤー（rubra_click の振り分けから）
# >/function neofunction:system/adv/player_interacted_with_entity/rubra_click
# =/function neofunction:system/rubra/d1/l3bridge

# 内容
execute unless data storage neofunction:rubra d1{bridge:0} if data storage neofunction:rubra d1.bridge run return 0
data modify storage neofunction:rubra d1.bridge set value 25
execute in neodimension:ceresta_festa run setblock 845 26 3284 minecraft:stone_button[face=wall,facing=south,powered=true]
execute in neodimension:ceresta_festa run setblock 845 26 3283 minecraft:redstone_lamp[lit=true]
execute in neodimension:ceresta_festa run fill 846 24 3285 849 24 3287 minecraft:orange_stained_glass replace minecraft:air
execute in neodimension:ceresta_festa run fill 846 24 3285 849 24 3287 minecraft:orange_stained_glass replace minecraft:vine
execute in neodimension:ceresta_festa run playsound minecraft:block.stone_button.click_on block @a[distance=..16] 845 26 3284 1 0.6
execute in neodimension:ceresta_festa run playsound minecraft:block.amethyst_block.resonate block @a[distance=..24] 847.5 25 3286.5 1.5 1.2
execute in neodimension:ceresta_festa run particle minecraft:end_rod 847.5 25 3286 1.5 0.1 1 0.02 30 normal
schedule function neofunction:system/rubra/d1/l3bridge_tick 1t replace
