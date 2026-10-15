# 命名：close3
# 説明：落石の扉 3 を閉じる（光が外れると岩が戻ってレールをふさぐ）
# >/function neofunction:system/rubra/d1/ped/apply
# >/function neofunction:system/rubra/d1/reset
# =/function neofunction:system/rubra/d1/gate/close3

# 内容
execute if block 827 -12 3270 minecraft:cobbled_deepslate run return 0
setblock 827 -12 3270 minecraft:cobbled_deepslate
setblock 827 -11 3270 minecraft:gravel
playsound minecraft:block.gravel.place block @a[distance=..48] 827 -12 3270 1.5 0.6
