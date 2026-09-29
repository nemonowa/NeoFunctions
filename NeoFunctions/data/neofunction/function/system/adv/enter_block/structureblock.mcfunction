# 命名：structureblock
# 説明：奈落検知
# 説明：バイオーム：ポイント・ネモでバリアの上に乗ったとき
# 説明：2s
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/enter_block/structureblock

## 内容
title @s actionbar {"text":"🔯重力場レーン【加速床】","color":"light_purple","bold":true,"italic":false}
effect give @s speed 3 5 true
particle sonic_boom ~ ~0.5 ~ 0 0 0 1 0 normal
playsound minecraft:entity.warden.sonic_charge master @s ~ ~ ~ 0.1 2 0.1