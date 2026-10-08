# 命名：close1
# 説明：【追加：2026-10-08 ルブラ編】落石の扉 1 を閉じる（光が外れると岩が戻ってレールをふさぐ）
# >/function neofunction:system/rubra/d1/ped/apply
# >/function neofunction:system/rubra/d1/reset
# =/function neofunction:system/rubra/d1/gate/close1

# 内容
execute if block 837 6 3266 minecraft:cobbled_deepslate run return 0
setblock 837 6 3266 minecraft:cobbled_deepslate
setblock 837 7 3266 minecraft:gravel
playsound minecraft:block.gravel.place block @a[distance=..48] 837 6 3266 1.5 0.6
