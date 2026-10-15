# 命名：l3bridge_off
# 説明：光の橋が消える：橋のガラスを空気に戻し、裂け目の西の壁（x846）のツタを戻す（落ちても登って戻れるように）。ランプとボタンも戻す
# 実行条件：どこでも
# >/function neofunction:system/rubra/d1/l3bridge_tick
# >/function neofunction:system/rubra/d1/setup_in
# =/function neofunction:system/rubra/d1/l3bridge_off

# 内容
data modify storage neofunction:rubra d1.bridge set value 0
execute in neodimension:ceresta_festa run fill 846 24 3285 849 24 3287 minecraft:air replace minecraft:orange_stained_glass
execute in neodimension:ceresta_festa run fill 846 24 3285 846 24 3287 minecraft:vine[west=true] replace minecraft:air
execute in neodimension:ceresta_festa run setblock 845 26 3284 minecraft:stone_button[face=wall,facing=south,powered=false]
execute in neodimension:ceresta_festa run setblock 845 26 3283 minecraft:redstone_lamp[lit=false]
execute in neodimension:ceresta_festa run playsound minecraft:block.glass.break block @a[distance=..24] 847.5 25 3286.5 1 1.4
execute in neodimension:ceresta_festa run particle minecraft:block{block_state:"minecraft:orange_stained_glass"} 847.5 24.5 3286.5 1.5 0.1 1 0 30 normal
