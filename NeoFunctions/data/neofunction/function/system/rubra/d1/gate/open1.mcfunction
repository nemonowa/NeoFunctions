# 命名：open1
# 説明：【追加：2026-10-08 ルブラ編】落石の扉 1 を開ける（光が当たって岩が動き、レールがつながる）
# >/function neofunction:system/rubra/d1/ped/apply
# =/function neofunction:system/rubra/d1/gate/open1

# 内容
execute if block 837 6 3266 minecraft:powered_rail run return 0
setblock 837 7 3266 minecraft:air
setblock 837 6 3266 minecraft:powered_rail[powered=true,shape=ascending_south]
particle minecraft:block{block_state:"minecraft:cobbled_deepslate"} 837.5 7 3266.5 0.4 0.6 0.4 0 30 normal
playsound minecraft:block.grindstone.use block @a[distance=..48] 837 6 3266 1.5 0.5
