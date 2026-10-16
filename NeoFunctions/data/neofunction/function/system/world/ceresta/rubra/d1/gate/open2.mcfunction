# 命名：open2
# 説明：落石の扉 2 を開ける（光が当たって岩が動き、レールがつながる）
# >/function neofunction:system/world/ceresta/rubra/d1/ped/apply
# =/function neofunction:system/world/ceresta/rubra/d1/gate/open2

# 内容
execute if block 832 -1 3263 minecraft:powered_rail run return 0
setblock 832 0 3263 minecraft:air
setblock 832 -1 3263 minecraft:powered_rail[powered=true,shape=ascending_east]
particle minecraft:block{block_state:"minecraft:cobbled_deepslate"} 832.5 0 3263.5 0.4 0.6 0.4 0 30 normal
playsound minecraft:block.grindstone.use block @a[distance=..48] 832 -1 3263 1.5 0.5
