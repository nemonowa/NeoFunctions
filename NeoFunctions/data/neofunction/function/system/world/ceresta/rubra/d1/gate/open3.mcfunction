# 命名：open3
# 説明：落石の扉 3 を開ける（光が当たって岩が動き、レールがつながる）
# >/function neofunction:system/world/ceresta/rubra/d1/ped/apply
# =/function neofunction:system/world/ceresta/rubra/d1/gate/open3

# 内容
execute if block 827 -12 3270 minecraft:powered_rail run return 0
setblock 827 -11 3270 minecraft:air
setblock 827 -12 3270 minecraft:powered_rail[powered=true,shape=ascending_north]
particle minecraft:block{block_state:"minecraft:cobbled_deepslate"} 827.5 -11 3270.5 0.4 0.6 0.4 0 30 normal
playsound minecraft:block.grindstone.use block @a[distance=..48] 827 -12 3270 1.5 0.5
