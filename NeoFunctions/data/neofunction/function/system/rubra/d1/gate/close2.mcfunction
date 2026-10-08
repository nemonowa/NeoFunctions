# 命名：close2
# 説明：【追加：2026-10-08 ルブラ編】落石の扉 2 を閉じる（光が外れると岩が戻ってレールをふさぐ）
# >/function neofunction:system/rubra/d1/ped/apply
# >/function neofunction:system/rubra/d1/reset
# =/function neofunction:system/rubra/d1/gate/close2

# 内容
execute if block 832 -1 3263 minecraft:cobbled_deepslate run return 0
setblock 832 -1 3263 minecraft:cobbled_deepslate
setblock 832 0 3263 minecraft:gravel
playsound minecraft:block.gravel.place block @a[distance=..48] 832 -1 3263 1.5 0.6
